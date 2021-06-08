## week 12.1



의사결정나무

기계학습 중 하나로 의사결정 규칙을 나무 형태로 분류해나가는 분석 기법



분석 과정이 직관적이고 이해하기 쉬움

연속형 범주형 변수를 모두 사용 가능

분지 규칙을 불순도를 최소화 시킴 ( 범주들이 섞여있는 정도)





트리 형성, 가지치기, 최적트리로 분류 순으로 진행



install.packages("tree") 트리 패키지 설치

아이리스 데이터 사용

동일한 방식으로 데이터 분할



tree(종속변수~x1+x2+x3+x4, data=)

cex-폰트사이즈

tree의 결과 마디 6에서는 더이상 분지할 필요 없음



최적 tree모형을 위한 가지치기(pruning) : cv.tree(tree모형결과, FUN= )



pruning 가지치기 cv.tree함수를 이용하여 최적 터미널 노드를 탐색



정확도는 서포트 벡터 랜덤포레스트가 우세





## 12.2 의사결정나무 2





rpart, party 패키지 사용



rpart 패키지는 과적합의 우려가 있어 가지치기를 해줘야함 현재 쓰는 iris의 경우는 필요없음



xerror(cross validation error)의 값이 최소가 되는 마디를 선택



printcp

iris data

ctree(종속변수~x1+x2+x3+x4, data= )



party패키지를 이용한 결과 편하게 볼 수 있음





## 12.3 랜덤포레스트



랜덤포레스트

의사결정나무의 단점(과적합)을 개선한 알고리즘



Ensemble 기법을 사용한 모델로서 주어진 데이터로 리샘플링을 통해 다수의 의사결정나무를 만든 다음, 여러 모델의 예측 결과들을 종합해 정확도를 높이는 방법



bootstrap sample (랜덤으로 한 샘플)



Baggin(Bootstrap Aggregating)

전체 데이터에서 학습데이터를 복원추출 트리를 구성

Training Data에서 Random Sampling



랜덤포레스트 패키지 

randomForest



ntree 몇개까지 트리

sampsize 샘플 사이즈

importance 변수 중요도 나타내줌



randomForest(종속변수~ x1+x2+x3+x4, data= )



mtry 여러개의 변수중 중요한 변수를 정해줌?

default는 sqrt(p)

mtry4로 바꾸면 정확도 더 높아짐



변수의 중요도 random forest결과로부터 중요변수 확인

분류의 정확도에 기여도가 높은 변수

랜덤포레스트 결과 정확도 : test data에 대한 정확도





