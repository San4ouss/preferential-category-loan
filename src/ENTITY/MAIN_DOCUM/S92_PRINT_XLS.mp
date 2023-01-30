<?xml version="1.0" encoding="UTF-8"?>
<MethodPresentation classId="MAIN_DOCUM" formatVersion="1.2" shortName="S92_PRINT_XLS">
    <Properties>
        <Hotkey>Ctrl+Shift+A</Hotkey>
        <InterpretBufferCommands>true</InterpretBufferCommands>
        <UserDriven>true</UserDriven>
        <ValidateOnLoadForm>ServerClient</ValidateOnLoadForm>
        <ValidateOnLostFocus>ServerClient</ValidateOnLostFocus>
    </Properties>
    <Parameters/>
    <Variables/>
    <Controls>
        <Form>
            <Properties>
                <Caption>S92. Выгрузка документов льготных кредитов</Caption>
                <Height>168</Height>
                <ValidateName>Form1</ValidateName>
                <Width>304</Width>
            </Properties>
            <Controls>
                <Label>
                    <Properties>
                        <Caption>Дата начала</Caption>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_DATE_BEGIN</Qualifier>
                        <Tips>Поясняющая надпись (Дата начала)</Tips>
                        <Top>8</Top>
                        <ValidateName>Label1</ValidateName>
                        <Width>140</Width>
                    </Properties>
                </Label>
                <Date>
                    <Properties>
                        <Caption>Дата начала</Caption>
                        <CheckValidate>true</CheckValidate>
                        <ClassId>DATE</ClassId>
                        <Left>156</Left>
                        <Qualifier>%PARAM%.P_DATE_BEGIN</Qualifier>
                        <TabIndex>2</TabIndex>
                        <Tips>Дата начала</Tips>
                        <Top>8</Top>
                        <ValidateName>Date1</ValidateName>
                    </Properties>
                </Date>
                <Label>
                    <Properties>
                        <Caption>Дата окончания</Caption>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_DATE_END</Qualifier>
                        <Tips>Поясняющая надпись (Дата окончания)</Tips>
                        <Top>40</Top>
                        <ValidateName>Label2</ValidateName>
                        <Width>140</Width>
                    </Properties>
                </Label>
                <Date>
                    <Properties>
                        <Caption>Дата окончания</Caption>
                        <CheckValidate>true</CheckValidate>
                        <ClassId>DATE</ClassId>
                        <Left>156</Left>
                        <Qualifier>%PARAM%.P_DATE_END</Qualifier>
                        <TabIndex>4</TabIndex>
                        <Tips>Дата окончания</Tips>
                        <Top>40</Top>
                        <ValidateName>Date2</ValidateName>
                    </Properties>
                </Date>
                <Check>
                    <Properties>
                        <Caption>формат XLS</Caption>
                        <CheckValidate>true</CheckValidate>
                        <ClassId>BOOLEAN</ClassId>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_XLS</Qualifier>
                        <TabIndex>5</TabIndex>
                        <Tips>Логическое значение (формат XLS)</Tips>
                        <Top>72</Top>
                        <ValidateName>Check1</ValidateName>
                        <Width>107</Width>
                    </Properties>
                </Check>
                <Check>
                    <Properties>
                        <Caption>формат XML</Caption>
                        <CheckValidate>true</CheckValidate>
                        <ClassId>BOOLEAN</ClassId>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_XML</Qualifier>
                        <TabIndex>6</TabIndex>
                        <Tips>Логическое значение (формат XML)</Tips>
                        <Top>104</Top>
                        <ValidateName>Check2</ValidateName>
                        <Width>107</Width>
                    </Properties>
                </Check>
                <Button>
                    <Properties>
                        <Caption>OK</Caption>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>OK</Qualifier>
                        <TabIndex>7</TabIndex>
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
                        <Left>156</Left>
                        <Qualifier>CANCEL</Qualifier>
                        <TabIndex>8</TabIndex>
                        <Tips>Отказ от выполнения</Tips>
                        <Top>136</Top>
                        <ValidateName>Cancel</ValidateName>
                        <Width>140</Width>
                    </Properties>
                </Button>
                <Text>
                    <Properties>
                        <CheckValidate>true</CheckValidate>
                        <ClassId>STRING_32000</ClassId>
                        <Height>24</Height>
                        <Left>228</Left>
                        <Qualifier>%VAR%.V_VALID</Qualifier>
                        <TabIndex>0</TabIndex>
                        <Tips>Переменная_1</Tips>
                        <Top>88</Top>
                        <ValidateName>V_VALID</ValidateName>
                        <Visible>false</Visible>
                        <Width>56</Width>
                    </Properties>
                </Text>
            </Controls>
        </Form>
    </Controls>
</MethodPresentation>
