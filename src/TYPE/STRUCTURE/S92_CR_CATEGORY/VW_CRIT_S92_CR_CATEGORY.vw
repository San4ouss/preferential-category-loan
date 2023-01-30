class S92_CR_CATEGORY;

@name('Полный список')
view VW_CRIT_S92_CR_CATEGORY {
    type main is
        select a(
        	a.[CODE] : C_CODE,
        	a.[NAME] : C_NAME,
        	a.[REF_KIND_CR].[NAME] : C_REF_KIND_CR,
        	a.[CF] : C_CF
        )
        in ::[S92_CR_CATEGORY];
}
