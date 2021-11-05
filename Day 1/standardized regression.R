library(magrittr)
# as pearson's correlation
cor <- anscombe %$% cor(y1, x1)
cor
# as a linear model
fit <- anscombe %$% lm(y1 ~ x1)
fit
# as a linear model with standardized parameters
fit.scaled <- anscombe %$% lm(scale(y1) ~ scale(x1))
fit.scaled
# is the standardized parameter for x1 equal to pearson's correlation?
coef(fit.scaled) == cor
