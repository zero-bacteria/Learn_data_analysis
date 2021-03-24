# week 2



벡터의 생성 



c()로 생성하면된다.

-[1] 로하면 첫번째 값 생성

[-(1,2)] 하면 첫번째 두번째 생성

: 를 이용해서 슬라이싱하는것 처럼 범위를 지정해서 없애줄 수도 있음



seq 함수를 활용하여 해당 범위를 이루는 벡터를 생성할 수 있다.

(0,10) 하면 0부터 10까지 마지막 arguments에 by=x를 통해서 x 만큼 간격을 둔 벡터생성가능

ex seq(1,10, by=2)



rep (replication)

반복하는 것 

z1 <- rep(1:4,2) 1부터 4까지 두번 반복



num 실수형태

int 정수형



벡터를 행렬로 만들 수 있음

cbind 열기준으로 결합

rbind 행으로 결합



matrix(1:10, nrow=2)열기준 ncol 하면 n개의 행 혹은 열을 가진 matrix 생성

디폴트 채우기는 1열부터 채우는것이 기본값임

byrow, bycol 등을 통해서 뭐부터 채우는지 정해줄 수 있음





array 활용해서 고차원 행렬 생성 가능 

```R
# n x m 행렬을 k개 만드는것
a1<-array(c(1:18), dim = c(n,m,k))
```



naems()를 통해서 이름을 부여할 수 있음



factor 변수

as.factor(변수이름) 어떤 변수를 factor 변수로 정의해주는것



예를들어서 S , M ,L XL 등을 예로들면 순서가 없음 하지만 순서를 만들어주자

factor 변수를 사용해 순서대로 지정해주면 순서가 잡힌다. ordered = True



dim하면 행렬의 차원을 알아볼 수 있음



as.data.frame를 통해서 데이터를 인식하게 되게 만드는것



*.csv - excel이용해서 아마 데이터 프레임 형태로 되어있는것을 많이 다룰 예정임



R에서는 ^로 제곱표현 가능 %% 는 나머지 %/% 몫

isTRUE(x)





### 행렬의 연산

A%*%B 행렬 곱(내적)

t() 전치행렬

solve()역행렬

det()기초였나? 아무튼 그 기본식 하는것 판별식에 사용되는것 ad-bc 

solve를 이용해서 방정식의 해를 구할 수 있음

eigenvalue 고유치와 eigenvector 고유벡터



### 간단한 함수 생성

function(){

return()}



기존의 함수를 보려면 그냥 콘솔창에 함수이름을 입력하면된다.



반복문과 조건문 예시 next의경우 continue라고 생각하면됨

```R
for(i in 1:10){
	if (i%%3 == 1){
		next()
	}
    print(i)
}
```

break는 그대로 break



while문은 그대로 형태 유지

















