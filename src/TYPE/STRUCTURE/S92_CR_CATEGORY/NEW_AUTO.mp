<?xml version="1.0" encoding="UTF-8"?>
<MethodPresentation classId="S92_CR_CATEGORY" formatVersion="1.2" shortName="NEW_AUTO">
    <Properties>
        <UserDriven>true</UserDriven>
    </Properties>
    <Parameters/>
    <Variables/>
    <Controls>
        <Form>
            <Properties>
                <Caption>Добавить</Caption>
                <Height>168</Height>
                <ValidateName>Form1</ValidateName>
                <Width>585</Width>
            </Properties>
            <Controls>
                <Label>
                    <Properties>
                        <Caption>Код</Caption>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_CODE</Qualifier>
                        <Tips>Поясняющая надпись (Код)</Tips>
                        <Top>8</Top>
                        <ValidateName>Label1</ValidateName>
                        <Width>124</Width>
                    </Properties>
                </Label>
                <Text>
                    <Properties>
                        <CheckValidate>true</CheckValidate>
                        <ClassId>STRING</ClassId>
                        <Height>24</Height>
                        <Left>140</Left>
                        <Qualifier>%PARAM%.P_CODE</Qualifier>
                        <TabIndex>2</TabIndex>
                        <Tips>Код</Tips>
                        <Top>8</Top>
                        <ValidateName>Text1</ValidateName>
                        <Width>437</Width>
                    </Properties>
                </Text>
                <Label>
                    <Properties>
                        <Caption>Наименование</Caption>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_NAME</Qualifier>
                        <Tips>Поясняющая надпись (Наименование)</Tips>
                        <Top>40</Top>
                        <ValidateName>Label2</ValidateName>
                        <Width>124</Width>
                    </Properties>
                </Label>
                <Text>
                    <Properties>
                        <CheckValidate>true</CheckValidate>
                        <ClassId>STRING</ClassId>
                        <Height>24</Height>
                        <Left>140</Left>
                        <Qualifier>%PARAM%.P_NAME</Qualifier>
                        <TabIndex>4</TabIndex>
                        <Tips>Наименование</Tips>
                        <Top>40</Top>
                        <ValidateName>Text2</ValidateName>
                        <Width>437</Width>
                    </Properties>
                </Text>
                <Object>
                    <Properties>
                        <Caption>вид кредита</Caption>
                        <ClassId>KIND_CREDITS_REF</ClassId>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_REF_KIND_CR</Qualifier>
                        <TabIndex>5</TabIndex>
                        <Tips>Объект: вид кредита</Tips>
                        <Top>72</Top>
                        <ValidateName>Object1</ValidateName>
                        <Width>124</Width>
                    </Properties>
                </Object>
                <Label>
                    <Properties>
                        <Caption>Коэффициент</Caption>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_CF</Qualifier>
                        <Tips>Поясняющая надпись (Коэффициент)</Tips>
                        <Top>104</Top>
                        <ValidateName>Label3</ValidateName>
                        <Width>124</Width>
                    </Properties>
                </Label>
                <Number>
                    <Properties>
                        <Caption>Коэффициент</Caption>
                        <CheckValidate>true</CheckValidate>
                        <ClassId>NUMBER</ClassId>
                        <Height>24</Height>
                        <Left>140</Left>
                        <Qualifier>%PARAM%.P_CF</Qualifier>
                        <TabIndex>7</TabIndex>
                        <Tips>Коэффициент</Tips>
                        <Top>104</Top>
                        <ValidateName>Number1</ValidateName>
                        <Width>437</Width>
                    </Properties>
                </Number>
                <Button>
                    <Properties>
                        <Caption>OK</Caption>
                        <Height>24</Height>
                        <Left>289</Left>
                        <Qualifier>OK</Qualifier>
                        <TabIndex>8</TabIndex>
                        <Tips>Выполнить операцию</Tips>
                        <Top>136</Top>
                        <ValidateName>Ok</ValidateName>
                        <Width>140</Width>
                    </Properties>
                </Button>
                <Button>
                    <Properties>
                        <Caption>Отмена</Caption>
                        <Height>24</Height>
                        <Left>437</Left>
                        <Qualifier>CANCEL</Qualifier>
                        <TabIndex>9</TabIndex>
                        <Tips>Отказ от выполнения</Tips>
                        <Top>136</Top>
                        <ValidateName>Cancel</ValidateName>
                        <Width>140</Width>
                    </Properties>
                </Button>
            </Controls>
        </Form>
    </Controls>
</MethodPresentation>
