# lec3_1.r
# Working directory
# Data import, frequency, histogram, 
# attach, detach

# set working directory
# change working directory 
# 워킹 디렉토리를 설정할 수 있다. 하지만 '\'가아닌 '/'인 것을 명심
setwd("C:/Users/user/Desktop/포스텍 교육/빅데이터분석과 R프로그래밍 1/week 3/lec3_1")

# 현재 경로를 찾을 수 잇다.
# check the current working directory
getwd()

# 1. Read csv file : brain weight data
brain<-read.csv("brain2210.csv")
# 앞의 6개 데이터 보여줌
head(brain)
# 데이터 관측지수와 변수의 개수 알려줌
dim(brain)

# 2.Read txt file with variable name
# read.table file ="파일명"지정해서 열 수 있음
car<-read.table(file="autompg.txt", na=" ", header=TRUE)
head(car)
dim(car)

# 3. example for using 'attach'

table(brain)

# to get frequency of male and female (brain data)
table(brain$sex)

# using the command 'attach'
attach(brain)

# get frequency of male and female
table(sex)

# histogram of brain weight
# hist(brain$wt)
hist(wt)

detach(brain)

hist(brain$wt)
hist(brain$brainwt)


# 순서대로 봐보자
detach(brain)

# 안됨
hist(brain)
# 안됨
hist(sex)
# 안됨
hist(wt)


attach(brain)

# 안됨
hist(brain)
# 안됨
hist(sex)
# 됨
hist(wt)


