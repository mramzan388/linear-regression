



x1 <- c(3,4,5,2,10,15,15,10,3,6,2,3)
x2 <- c(8,8,2,2,15,6,6,4,8,6,3,3)
x3 <- c(8,4,2,2,3,2,2,3,2,6,8,8)
x4 <-c(3,8,2,3,3,3,3,3,2,4,6,8)
x5 <- c(50,50,50,50,50,50,75,75,75,75,75,75)
y <- c(9.167, 0.694, 0.379,.385, 3.345, .208, .201, .329, 4.966, 1.362, 1.515, 0.751)

df<- data.frame(x1,x2,x3,x4,x5,y)
view((df))

ggplot(df, aes(x=x1, y=y)) + geom_point(col = 'green', pch = 24)

ggplot(df, aes(x=x2, y=y)) + geom_point(size= 2, shape= 23)

ggplot(df, aes(x=x3, y=y)) + geom_point()

ggplot(df, aes(x=x4, y=y)) + geom_point() + geom_smooth(method=lm)


model  <- lm(y~ x1+x2+x3+x4+x4, data = df)
summary(model)


