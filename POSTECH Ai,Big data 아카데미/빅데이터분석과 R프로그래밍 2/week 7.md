# week 7



## 7.1 두 그룹간 평균비교 t-test



모집단간 차이에 대한 검정 (모수/비모수 검정)



모수 - 데이터가 정규분포할때

비모수 - 정규분포 아닐때



연속형데이터 : 비율척도, 등간척도 - 숫자적의미

 t-test  함 두집단시

세개집단은 ANOVA



서열 척도 (ex 주관적의미 - 통증정도, 만족도)

wilcoxon rank sum





 단일표본의 평균검정

```R
t.test (변수, mu= 검정하고자 하는 평균값)
```





두집단 표본평균 비교검정

```R
t.text(타겟변수~변주형변수, data=)
```





특정분포가 아닌 비모수적인 방법

wilcox.test 





## 7.2 짝을 이룬 그룹간 비교



paried t-test



특정 처리의 효과를 비교분석할때 사용 



동일한 실험표본 : befor/after 측정

평균, 편차계산 => 검정통계량



t.test(before, after, mu=0, paired=T)

mu -> 귀무가설은 차이가 없다

p-value가 굉장히 낮기 때문에 귀무가설을 기각 (물론 유의수준보다)

따라서 귀무가설 기각 -> 차이가 있다



차이를 계산하고 그것의 평균과 편차를 계산

그것을 이용해서 t를 구한다. =>검정통계량



alternative ->  대립가설 설정 







## 7.3 분산분석 ANOVA



전체 분산을 분할하여 어떤 요인의 영향이 유의한지 검정하는 방법

-> facotr A에서나왔는지 B에서 나왔는지 오차에서 나왔는지 구별하는 방법이라고 생각



분산분석모형 적용

aov (타겟변수~factor)



사후검정

ANOVA에서 어떤 factor의 유의성이 검정되면 그 다음 단계에 하는 검정

Tukey's Honest Significant Difference Test







## 7.4 이원분산분석



이원 분산분석

factor가 두개인 경우

aov(타겟변수~factor1 + factor2)



