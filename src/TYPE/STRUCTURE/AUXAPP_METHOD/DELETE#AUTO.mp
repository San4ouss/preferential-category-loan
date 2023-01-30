<?xml version="1.0" encoding="UTF-8"?>
<MethodPresentation classId="AUXAPP_METHOD" formatVersion="1.2" shortName="DELETE#AUTO">
    <Properties>
        <UserDriven>true</UserDriven>
    </Properties>
    <Parameters/>
    <Variables/>
    <Controls>
        <Form>
            <Properties>
                <Caption>Удалить</Caption>
                <Height>72</Height>
                <Left>0</Left>
                <TabIndex>0</TabIndex>
                <Top>0</Top>
                <ValidateName>Form1</ValidateName>
                <Width>321</Width>
            </Properties>
            <Controls>
                <Check>
                    <Properties>
                        <Caption>Перекомпилировать точку вызова</Caption>
                        <ClassId>BOOLEAN</ClassId>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>%PARAM%.P_COMP</Qualifier>
                        <TabIndex>1</TabIndex>
                        <Tips>Логическое значение (Перекомпилировать точку вызова)</Tips>
                        <Top>8</Top>
                        <ValidateName>Check1</ValidateName>
                        <Width>274</Width>
                    </Properties>
                </Check>
                <Button>
                    <Properties>
                        <Caption>OK</Caption>
                        <Height>24</Height>
                        <Left>8</Left>
                        <Qualifier>OK</Qualifier>
                        <TabIndex>2</TabIndex>
                        <Tips>Выполнить операцию</Tips>
                        <Top>40</Top>
                        <ValidateName>Ok</ValidateName>
                        <Width>144</Width>
                    </Properties>
                </Button>
                <Button>
                    <Properties>
                        <Caption>Отмена</Caption>
                        <Height>24</Height>
                        <Left>160</Left>
                        <Qualifier>CANCEL</Qualifier>
                        <TabIndex>3</TabIndex>
                        <Tips>Отказ от выполнения</Tips>
                        <Top>40</Top>
                        <ValidateName>Cancel</ValidateName>
                        <Width>144</Width>
                    </Properties>
                </Button>
            </Controls>
        </Form>
    </Controls>
</MethodPresentation>
