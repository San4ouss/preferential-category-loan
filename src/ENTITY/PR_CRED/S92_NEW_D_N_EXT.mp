<?xml version="1.0" encoding="UTF-8"?>
<MethodPresentation classId="PR_CRED" formatVersion="1.2" shortName="S92_NEW_D_N_EXT">
    <Properties>
        <Destructor>PR_CRED.DELETE_DEFAULT</Destructor>
        <Priority>100</Priority>
        <UserDriven>false</UserDriven>
    </Properties>
    <Parameters>
        <Parameter shortName="P_CR_CATEG">
            <ViewClassId>S92_CR_CATEGORY</ViewClassId>
            <ViewFilter>([P_KIND_CREDIT] is not null and {&amp;C_REF_KIND_CR} is null or {&amp;C_REF_KIND_CR} = [P_KIND_CREDIT])</ViewFilter>
            <ViewShortName>VW_CRIT_S92_CR_CATEGORY</ViewShortName>
        </Parameter>
    </Parameters>
    <Variables/>
    <Controls>
        <Form>
            <Properties>
                <Caption>S92. Открыть договор. Расширение</Caption>
                <Height>104</Height>
                <ValidateName>FormExt1</ValidateName>
                <Width>357</Width>
            </Properties>
            <Controls>
                <Object>
                    <Properties>
                        <Caption>Категория ссуды</Caption>
                        <ClassId>S92_CR_CATEG_REF</ClassId>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_CR_CATEG</Qualifier>
                        <TabIndex>1</TabIndex>
                        <Tips>Объект: Категория ссуды</Tips>
                        <Top>8</Top>
                        <ValidateName>ObjectExt1</ValidateName>
                        <Width>120</Width>
                    </Properties>
                </Object>
                <Label>
                    <Properties>
                        <Caption>Наименование</Caption>
                        <Depend>%PARAM%.P_CR_CATEG</Depend>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_CR_CATEG.NAME</Qualifier>
                        <Tips>Поясняющая надпись (Наименование)</Tips>
                        <Top>40</Top>
                        <ValidateName>LabelExt1</ValidateName>
                        <Width>140</Width>
                    </Properties>
                </Label>
                <Text>
                    <Properties>
                        <ClassId>STRING</ClassId>
                        <Depend>%PARAM%.P_CR_CATEG</Depend>
                        <Height>24</Height>
                        <Left>156</Left>
                        <Qualifier>%PARAM%.P_CR_CATEG.NAME</Qualifier>
                        <TabIndex>0</TabIndex>
                        <Tips>Наименование</Tips>
                        <Top>40</Top>
                        <ValidateName>TextExt1</ValidateName>
                        <Width>192</Width>
                    </Properties>
                </Text>
                <Label>
                    <Properties>
                        <Caption>Коэффициент</Caption>
                        <Depend>%PARAM%.P_CR_CATEG</Depend>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_CR_CATEG.CF</Qualifier>
                        <Tips>Поясняющая надпись (Коэффициент)</Tips>
                        <Top>72</Top>
                        <ValidateName>LabelExt2</ValidateName>
                        <Width>140</Width>
                    </Properties>
                </Label>
                <Number>
                    <Properties>
                        <Caption>Коэффициент</Caption>
                        <ClassId>NUMBER</ClassId>
                        <Depend>%PARAM%.P_CR_CATEG</Depend>
                        <Height>24</Height>
                        <Left>156</Left>
                        <Precision>2</Precision>
                        <Qualifier>%PARAM%.P_CR_CATEG.CF</Qualifier>
                        <TabIndex>0</TabIndex>
                        <Tips>Коэффициент</Tips>
                        <Top>72</Top>
                        <ValidateName>NumberExt1</ValidateName>
                        <Width>192</Width>
                    </Properties>
                </Number>
            </Controls>
        </Form>
    </Controls>
</MethodPresentation>
