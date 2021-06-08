## 11.1 서포트벡터 머신 1



지도학습 , 분류모델 중 하나 kNN과 같은분류 

SVM 

정확도좋음

해석하기 어려움



두개의 범주를 가장 잘 분류하는 벡터를 찾는 것



비선형 패턴의 입력공간을 선형 패턴의 feature space로 변환

Kernel method로 비선형 경계면 도출

대부분의 패턴은 선형적으로 불가능



서포트 벡터 머신 수행위한 패키지 e1071

함수 svm



caret : confusion Matrix위한 패키지



svm(y변수~x변수, data=)

전체데이터를 사용한 결과







svm모델 m1을 적용하여 예측된 범주값을 pred로 저장





### 11.2 서포트벡터머신 2



커널함수

x의 기저함수

x에 대한 새로운 특징을 추출하는 변환함수

새로운 커널함수로 feature space로 만들어줘서 선형관계로 분류할 수 있다.

2->3차원으로 보내서 함



caret 오분류율 교차표 생성을 위한 패키지

학습데이터와 검증데이터의 분할 통해서 실행

커널을 따로 지정하지 않으면 radial

polynomial

sigmoid

등의 커널함수 





## 11.3 서포트 벡터 머신2



Breast Cancer 데이터 사용

첫번째 column인 ID number는 필요없는 feature이므로 제거

radial

polynomial

sigmoid

linear



False positive, False negative 중 어느것이 더위험한지

어떤것이 더 중요한것인가에 따라 진단 예측 모형이 달라질 수 있음













