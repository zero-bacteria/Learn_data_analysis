# week 3





## R데이터 생성



.csv 파일 불러들이기 

변수이름<-read.csv("파일이름")

csv(comma sepqrated value) 데이터 저장시 범용형태



xls 파일인 경우에는 csv파일로 저장한 다음 read.csv로 불러들이는게 편안함



txt 파일 불러들이기 할때는 read.table 

na = " " 어떻게 분리되어있는지

header = True 첫번째 줄은 변수이름으로 불러달라는?



setwd 를 통해 저장위치를 설정할 수 있ㅇ므



데이터를 불러들일때 몇가지 팁

1. working directory 설정 setwd 데이터가 저장되어있는 폴더
2. 데이터를 불러들이고 확인
   1. head 데이터이름 첫번째 6줄을 프린트 해줌
   2. dim 데이터의 관측지수와 변수의 개수를 알려줌



attach 사용 데이터 이름을 따로 지정하지 않아도 됨

데이터를 만들고 데이터 이름을 써주면 관련된 정보들을 묶어준다?

x, y 관련된 데이터 를 attach 해주면 x만 쳐도 x와 y의 관계가 나온다.



file =을 통해서 데이터를 불러 들일 수도 있따.

```R
# 2.Read txt file with variable name

car<-read.table(file="autompg.txt", na=" ", header=TRUE)
head(car)
dim(car)
```

file="파일명"으로 열수있고 na는 구분 header는  변수이름?





hist(x)를 하면 numeric한 x 값에 따른 분포도가 히스토그램으로 나오는 구조



* attach를 통해 brain$wt와 같이 경로에 접근하는 것이 아닌 단순한 변수 이름으로 접근이 가능해진다.





## 3-2

subset(데이터이름, 조건)



aggregate(변수~그룹, 데이터, 함수)



추출을 했을때 범위가 다르게 자동으로 설정되기 때문에 동일 범위로 설정하여 비교가 쉽도록하자



데이터 내보내기

write.table , write.csv





## 3-3

dplyr 패키지 함수 



select filter 등을 활용할 수 있음





## 3-4

파이프연산자는 앞에서부터 순서대로 수행하여 데이터 전처리를 하고 set4라는 이름으로 저장

mutate로 새로 만들 수 있다.



summarize하면 통계치 요약해줌



select로변수범위역시 선택할 수 있음

