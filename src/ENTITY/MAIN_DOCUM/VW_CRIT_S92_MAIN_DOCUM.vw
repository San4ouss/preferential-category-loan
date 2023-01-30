class MAIN_DOCUM;

@access(used_to_set_rights:=true)
@generate_ansi_joins(true)
@name('S92 Список документов')
@tag('G#')
view VW_CRIT_S92_MAIN_DOCUM {
	pragma hint('first_rows(1)');

	type main is
		select A1(
			A1.[DATE_DOC] : C_DATE_DOC,
			A1.[VID_DOC]->(false)[SHORT_NAME] : C_VID_DOC,
			A1.[DOCUMENT_NUM] : C_NUM,
			decode(A1.[SUM], null, A1.[SUM_PO], 0, A1.[SUM_PO], A1.[SUM]) : C_SUM,
			A1.[SUM_NT] : C_SUM_NT,
			decode(A1.[SUM], null, A1.[VALUTA_PO]->(true)[CUR_SHORT], 0, A1.[VALUTA_PO]->(true)[CUR_SHORT],
					A1.[VALUTA]->(true)[CUR_SHORT]) : C_CUR_SHORT,
			decode(A1.[SUM], null, A1.[VALUTA_PO], 0, A1.[VALUTA_PO], A1.[VALUTA]) : REF$C_CUR_SHORT,
			A1.[VALUTA] : C_CUR_SHORT_DT_R,
			A1.[VALUTA_PO] : C_CUR_SHORT_KT_R,
			A1.[NUM_DT] : C_ACC_DT,
			A1.[ACC_DT] : REF$C_ACC_DT,
			A1.[ACC_DT] : C_ACC_DT_R,
			A1.[NUM_KT] : C_ACC_KT,
			A1.[ACC_KT] : REF$C_ACC_KT,
			A1.[ACC_KT] : C_ACC_KT_R,
			A1%statename : C_STATE_ID,
			A1.[DATE_PROV] : C_DATE_PROV,
			A1.[NAZN] : C_NAZN,
			case
				when A1.[KL_DT].[0] = 2
					and A1.[KL_KT].[0] = 2 then
					A1.[KL_DT].[2].[3]->(true)[BIC] || '=>->' || A1.[KL_KT].[2].[3]->(true)[BIC]
				when A1.[KL_DT].[0] = 1
					and A1.[KL_KT].[0] = 2 then
					'-> ' || A1.[KL_KT].[2].[3]->(true)[BIC]
				when A1.[KL_DT].[0] = 2
					and A1.[KL_KT].[0] = 1 then
					'    ' || A1.[KL_DT].[2].[3]->(true)[BIC] || ' =>'
				else null
			end : C_BIC,
			A1.[DOC_SEND_REF]->(true)[VID_SEND] : C_VID_SEND,
			A1.[TYPE_MESS]->(true)[CODE] : C_CODE,
			A1.[NUM_KS] : C_NUM_KS,
			A1.[NUM_KS1] : C_NUM_KS1,
			A1.[NAZN_CODE] : C_NAZN_CODE,
			A1.[PRIORITET] : C_PRIORITET,
			A1.[DOCUMENT_DATE] : C_DOCUMENT_DATE,
			A1.[DOCUMENT_USER]->(true)[NAME] : C_NAME,
			A1.[PROV_USER]->(true)[NAME] : C_NAME_1,
			A1.[KL_DT].[2].[PART]->(true)[CODE] : C_CODE_SD,
			A1.[KL_KT].[2].[PART]->(true)[CODE] : C_CODE_RC,
			trim(nvl(A1.[KL_DT].[2].[1], A1.[NUM_DT])) : C_KL_DT#2#1,
			trim(nvl(A1.[KL_KT].[2].[1], A1.[NUM_KT])) : C_KL_KT#2#1,
			NVL(A1.[KL_DT].[2].[2], A1.[KL_DT].[1].[1]->(true)[NAME]) : C_KL_DT#2#2,
			NVL(A1.[KL_KT].[2].[2], A1.[KL_KT].[1].[1]->(true)[NAME]) : C_KL_KT#2#2,
			A1.[DOCUMENT_UNO] : C_DOCUMENT_UNO,
			A1.[ASTR_DATE_PROV] : C_ASTR_DATE_PROV,
			A1.[DATE_VAL] : C_DATE_VAL,
			A1.[IN_FOLDER] : C_IN_FOLDER,
			A1.[KOD_NAZN_PAY]->(true)[KOD_NAZN] : C_KOD_NAZN,
			A1.[PACHKA] : C_PACHKA,
			A1.[TEXT_VOZV] : C_TEXT_VOZV,
			A1.[USER_EXEC]->(true)[NAME] : C_NAME_2,
			A1.[QUIT_DOC] : C_QUIT_DOC,
			A1.[DEPART]->(true)[CODE] : C_DEPART,
			A1%id : C_ID,
			A1.[DT_SEND]->(true)[CODE] : C_CODE_1,
			A1.[KT_SEND]->(true)[CODE] : C_CODE_2,
			A1.[PRODUCT_DT].[ACC_PROD] : C_PRODUCT_DT#ACC_PROD,
			A1.[HISTORY_STATE] : C_HISTORY_STATE,
			'>>' : C_AUX_CTRL,
			A1.[SUM_KSPL] : C_SUM_KSPL,
			A1.[PRODUCT_CT].[ACC_PROD] : C_PRODUCT_CT#ACC_PROD,
			A1.[CORRECTION_DOC] : C_CORRECTION_DOC,
			A1.[STORNO_DOC] : C_STORNO_DOC,
			A1.[FILIAL] : C_FILIAL,
			NVL(A1.[ACC_DT].[DEPART], A1.[DEPART]) : C_DEPART_DT,
			NVL(A1.[ACC_DT].[DEPART], A1.[DEPART]) : REF$C_DEPART_DT,
			NVL(A1.[ACC_KT].[DEPART], A1.[DEPART]) : C_DEPART_KT,
			NVL(A1.[ACC_KT].[DEPART], A1.[DEPART]) : REF$C_DEPART_KT,
			A1.[MAIN_SMART] : C_MAIN_SMART,
			A1.[DEPART] : C_DEPART_ID,
			case
				when A1.[DOC_KIND] = ::[DOC_KINDS]([CODE] = 'MULTILINE_DOC') then
					'Многострочный'
				else decode((select z1(count(z1%id)) in (::[USER_TYPE_REF] : z1) all where z1%collection = A1.[USER_TYPE] and z1.[ ] in (::[USER_TYPE]([CODE] = 'SMART_DT'),
							::[USER_TYPE]([CODE] = 'SMART_KT'))), 1, 'Да', 'Нет')
			end : SMART,
			A1.[EDITION_UNO] : C_EDITION_UNO,
			A1.[MAIN_SMART]->(true, [MAIN_DOCUM])[DOCUMENT_NUM] : C_DOCUMENT_NUM,
			A1.[SUBDOCUMENTS] : C_SUBDOCUMENTS,
			A1.[PRODUCT_DT].[ACC_DOC] : C_PRODUCT_DT#ACC_DOC,
			A1.[PRODUCT_CT].[ACC_DOC] : C_PRODUCT_CT#ACC_DOC,
			A1.[REP_1ST_SIGN] : C_REP_1ST_SIGN,
			A1.[REP_1ST_SIGN]->(true, [PERSONS_POS])[FASE]->(true)[NAME] : C_NAME_3,
			A1.[REP_1ST_SIGN]->(true, [PERSONS_POS])[RANGE]->(true)[VALUE] : C_VALUE,
			A1.[FILIAL]->(true)[CODE] : C_FILIAL_CODE,
			A1.[CATEGORY_INFO] : C_CATEGORY_INFO,
			R1.[UPNO] : C_UPNO
		)
		in ::[MAIN_DOCUM]
			left outer join (::[MD_REQS] R1) on A1 = R1.[MD_REF];

	pragma set_column(C_CUR_SHORT, target_class_id, [FT_MONEY]);
	pragma set_column(C_BIC, target_class_id, [CL_BANK_N]);
	pragma set_column(C_DEPART_DT, target_class_id, [DEPART]);
	pragma set_column(C_DEPART_KT, target_class_id, [DEPART]);
-- updated CHANGE_QUALIFIER MAIN_DOCUM->MAIN_DOCUM_S97 05/11/22
-- updated CHANGE_QUALIFIER MAIN_DOCUM_S97->MAIN_DOCUM 05/11/22
}
