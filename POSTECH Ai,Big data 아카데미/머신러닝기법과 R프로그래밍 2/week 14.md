## 14.1 연관규칙



연관규칙 

대용량 데이터베이스의 트랜잭션에서 빈번하게 발생하는 패턴을 발견

거래간의 상호 관련성을 분석



연관규칙 예시

신발을 구매하는 고객의 10%는 양말을 동시에 구입한다.





시장바구니 - 고객이 구매한 물품에 대한 정보

트랜잭션 - 고객이 거래한 정보

시장바구니 분석 - 시장바구니 데이터로부터 연관규칙을 탐색분석



연관규칙을 평가하기 위해 지지도, 신뢰도, 향상도를 사용



지지도가 어느 정도 수준에 도달해야만한다.

신뢰도가 높을경우 두 항목 A->B에서 항목 B의 확률이 커야지 연관규칙이 의미가 있다.

향상도가 1보다 큰 값을 주어야 유용한 정보를 준다고 볼 수 있다.



향상도 

A가 거래된 경우, 그 거래가 B를 포함하는 경우와 B가 임의로 거래되는 경우의 비율

1보다 크면 결과 예측에 대하여 우연적 기회보다 우수함을 의미





동시발생행렬



연관규칙수행을 위한 패키지 

arules



연관규칙 분석은 dataframe ㅎ여태와 transaction data의 구조가 다르다.



arules 패키지를 통해 transaction 데이터 변환과 연관규칙 분석을 함

Split을 통해 id별로 item들을 as 함수를 통해 transaction 데이터로 변환

dvd.trans



transaction데이터의 요약

밀도가 0.3 30%의 cell에 거래가 발생해 데이터가 있다는 뜻

연관규칙 함수 : apriori(transaction, parameter=list(support=0.0#, confidence=0.##))



dvd.trans

inspect(dvd_rule)





## 14.2 데이터 설명



Groceries data("arules" package에 탑재되있는 데이터)



inspect









## 14.3 로지스틱 회귀분석



Y: Remiss(0,1)

회귀분석에서는 거의 연속형 변수값을 했는데

로지스틱에서는 타겟변수가 0,1로 되어있음



y =0,1



로지스틱 회귀분석은 종속변수가 범주형인 경우 사용되는데 2개의 범주 혹은 3개 이상의 범주를 다루기도 한다. 3개 범주 이상의 경우 서열형 데이터인 경우와 명목형 데이터









