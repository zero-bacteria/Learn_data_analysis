## 10.1 k 인접 기법



분류

지도학습. 타겟범주를 알고 있는 데이터로 분류규칙을 생성하고 새로운 데이터를 특정범주에 분류하는 기법

]



k-인접 방법 (kNN)  k개의 가장 가까운 이웃들을 사용해서 분류하는 방법



k개의 인접객체를 고려할 때 새로운 객체는 어느 범주로 할당해야하는가





최적k 

k가 너무 크면 데이터 구조를 파악하기 어렵고 너무 작으면 과적합 위험이 있음

교차검증을 통해서 정확도가 높은 k를 선정



단순하고 효율적 장점 빠름



단점으 모델생성x k가커지면 느려지고 많은메모리가 필요



kNN을 수행하기 위한 추가 패키지 설치

패키지 class

분류분석후 검증에 사용되는 cross table을 위한 패키지 gmodels

최적 k등 그래프를 위한 패키지 scales



데이터 불러들이기

데이터분할

순으로 진행



knn(train=학습데이터, test=검증데이터, cl=타겟변수, k= )



k=5를 한 kNN의 결과

md1에는 test 데이터들을 예측한 결과가 저장되어 있음



confusionMatrix(md1, testLabels)





## 10.2 k-인접기법 2



k=7에서 정확도가 가장 높은것을 볼 수 있음





Petal.width와 Petal.length에 산점도를 그려보면 setosa는 잘 분류됨.

virginica와 versicolor는 분류가 잘 되지 않음.



거리에 따라 가중치를 부여하는 두가지 알고리즘이 존재

weighte kNN의 결과를 md2로 저장

e결과를 보기 위해서 fitted 함수를 이용



그다음 테스트를 통해서 오분류가 얼마나 됐는지 보자



k=7로 distance=2로 옵션변경 동일한 과정으로 검사



가중치를 주는것 weighted knn 수행하기 위해서는 kknn 패키지 사용





## 10.3 판별 분석



판별 분석

객체를 몇개의 범주로 분류

범주들을 가장 잘 구분하는 변수 파악 및 범주간 차이를 가장 잘 표현하는 함수 도출



피셔 방법

의사결정이론 - 선형판별분석, 이차판별분석



데이터 불러들이기 

데이터 분할



패키지 MASS 설치

LDA 함수 : lda(종속변수 ~ 독립변수, data=학습데이터, prior=사전확률)



사전확률 -  원인 A가 발생할 확률인 P(A)와 같이 결과가 나타나기 전에 결정되어 있는 확률







## 10.4 판별분석 2





LDA 

분산, 공분산 행렬이 범주 관계없이 동일한경우

적은파라미터를 사용, 낮은분산

낮은 유연성



QDA

분산,공분산 행렬이 범주별로 다른경우

많은 파라미터를 사용, 높은 분산

높은유연성





모집단 등분산 검정

분산,공분산 행렬이 범주별로 다른경우 이차판별분석을 실시

귀무가설 : 분,공 행렬이 동일

대립가설 : 분,공 행렬이 동일 x

귀무가설(등분산 가정)이 기각 -> QDA 실시



qda(종속변수~독립변수, data=학습 데이터 이름, prior=사전 확률)



정확도 산정 : 오분류율

klaR이라는 패키지 사용해서 Partition Plot 실행

partimat()









