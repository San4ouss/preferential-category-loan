class S92_CR_TO_CATEG;

@name('Полный список')
view VW_CRIT_S92_CR_TO_CATEG {
    type main is
        select a(
        	a.[CREDIT].[NUM_DOG] : C_CREDIT,
        	a.[START] : C_START,
        	a.[END] : C_END,
        	a.[CATEGORY].[NAME] : C_CATEGORY,
        	a.[CATEGORY].[CF] : C_CF
        )
        in ::[S92_CR_TO_CATEG];
}
