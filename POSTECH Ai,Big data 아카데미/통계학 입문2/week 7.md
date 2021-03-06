# week 7



## 7.1 데이터 탐색



기본정보, 변동성, 데이터가 상식 범위 안에 존재하는지, 상호작용이 있는지

위의 네가지를 고려해야한다.





기술 통계치 : 평균, 최소값, 최대값, 분산 등

데이터를 시각화함으로써 전반적인 경향을 이해



1개의 변수가 날짜별로 어떤 변화를 보이는지



변동성 : 다변량 탐색

독립성분분석결과 다량의 요인들을 찾아볼 수 있다.





이상치 : 모든 데이터가 상식적인 범위 안에 존재하는가 - > 분석에서 제외 혹은 이유 분석



통계치의 왜곡 - 

이상치 하나가 들어옴으로써 범위가 갑자기 너무 증가하여 관계성이 매우 있어보이게 나타내는 것이다.

monkey 데이터에 킹콩이 들어오는느낌

물타기 하는 느낌





다변량 공간에서 이상치  - 주성분을 시각화 하여 이상치를 찾을 수 있다.



회귀예측 모형에서 상관관계가 1에 가까운 독립변수

너무 가까운 상관관계 값을 넣어서 식을 넣어주면 일반식이 오히려 별로일 수 있음 





기술통계: 수집한 데이터를 요약 묘사로 설명하는 통계

(Descriptive statictics)



추리통계 : 수집한 데이터를 바탕으로 추론하는 통계기법







## 7.2 빅데이터의 차원축소



현업데이터 특성상 타겟 변수의 특성에 영향을 미치는 요인이 매우 많음 



차원축소기법의 필요성

변수들간 **다중공선성** (높은 상관관계, 상호작용)

과적합의 위험 증가

타겟값의 정보가 어떤 구조로 들어있는지 파악이 안됨





주성분분석 PCA

1. 데이터 공간에서 분산이 최대인 축을 찾는다.(PC1)
2. 첫번째 축과 직교하면서 분산이 최대인 축을 찾는다. (PC2)

가장 대표적인 차원축소 방법

첫번째 변수가 전체 분산을 가장 많이 설명 다음이 나머지 분산을 가장 많이 설명하는 방식

새로 구성된 변수는 서로 독립



주성분의 weight 산정방법

* 공분상행렬의 고유값과 고유벡터 가장큰 고유값 첫번째 고유백터



최적 주성분은 몇개일까?

변수가 k일때 몇개의 축을 선정하는 것이 타당한가

eigenvalue값과 eigenvalue의 수를 본다.

그래프를 봣을때 기울기가 갑자기 줄어드는 차원까지 감소시킨다.

전체 변동의 90%를 설명하는 차원



차원축소효과 

데이터를 보존하면서 노이즈 제거



## 7.3 데이터 변환에 의한 저차원 시각화



고차원데이터의 차원 축소

변수선택과 특징 추출이 필요

원래있는 데이터를 가지고 새로운 변수들을 만드는것 -> 특징 추출



특징 추출을 통해  범주 - 분류 , 연속형 - 예측 한다고 한다.



변수 선택 기법

특정변수를 선택하는것



특징추출 기법

새로운 축을 생성했을때 생기는 변화

->차원축소로 간다.

고차원 데이터의 정보를 보존하면서 불필요정보를 제거하는 방식으로 특징 추출



주성분 - 선형, 인접보존 - 비선형

스펙트럼데이터 같은 경우에는 저차원 시각화 필요



데이터분석의 목적 - 예측모형(예측, 분류)

고차원 -> 저차원





인접보존기법 

제한적 볼츠만 머신

오토인코더





## 7.4 데이터와 예측모형



데이터 정제 - 데이터 탐색 - 통계적 모델링



데이터 분석 목적 예측모형

연속이면 예측 - 회귀분석, 선형, 비선형

범주형이면 분류 - 의사결정나무 등



특징추출과 분류모형

Auto Encoder를 이용한 특징추출 후 분류모형 SVM



데이터의 시각화 - 원래 데이터와 특징추출변환의 차별성



예측모형 성능 - 비교 분류예측 정확도



5-fold 훈련 검정데이터 반복

주성분 , AuoEncoder 사용

등등 각각의 방법에 따른 분류 예측 정확도 측정









