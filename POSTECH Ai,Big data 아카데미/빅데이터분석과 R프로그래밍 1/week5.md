# week 5



데이터 시각화



install.packages('lattice')

libray(lattice) 라이브를 잡아주는것은 매번 해줘야함



R 기본 그래픽스 base에 포함되어있음

Lattice 그래픽스 직교형태의 멀티패널 툴

ggplot2 그래픽 시스템 Hadley Wickham이 구현 

grammer of graphics?





**lacttice**

직교형태의 그래픽 툴



xyplot 산점도, 조건부변수를 넣어 레별별로 그래프를 넣어주면 3차원적인 데이터 특성을 볼 수 있다.



* bwplt 상자그림
* dotplot
* levelplot
* strpplot 점을 함께 표시한 상자그림
* splom 산점도 매트릭스
* contouplot 등고선 그림







demo(lattice) 수행시 데모 플랏 볼 수 있음



패키지의 데이터 사용 lattice 안에 ethanol 데이터가 있음 ( lattice 패키지에 들어있는 실습데이터)



head() 처음 6줄 프린트

dim() 데이터의 디멘션 차원ㅇ르 볼 수 있음

str() 데이터 형식? 데이터에 대한 설명





table($C) C값에대한 빈도를 표로



xyplot(y변수~x변수, 데이터 = 이름 , 타이틀=타이틀"" )



xyplot을 이용한 멀티패널 산점도 xyplot (y변수~xqustn|조건부변수,data=)





xyplot을 이용한 멀티패널 산점도 (subset 데이터)



```R

```





다양한 사이트를 이용 할 수있다.



## 5-2



ggplot 이라는 기본함수



Lasyer 

* ase(Aesthetic): 데이터를 어떻게 넣을건지
* geom (Geometric objects) : point(점), line(선) 등
* coor (coordinate system)



1. sacle +coordinate system은 그림을 그릴때 캔버스로 생각하면 됨
2. 그 위에 data+mapping + geom을 추가
3. geom(기하학적 요소) : geom_point, geom_smooth등을 이미 그려진 산점도에 추가하여(incremental)그릴 수 있음



```R
ggplot (데이터이름, aes(x=x축변수, y=y축변수 , color = factor변수, shape = factor변수)) + geom_point(size=3)
```



as.factor 쓴이유 4,6,8이 numeric으로 인식 그래서 carl$ cyl을 factor 변수로 인식하기위해서



ggplot 함수에 데이터는 car1을 이용하고, x축에는 wt(차의무게)를, y축 에는 disp(배기량)의 산점도를 그리고, 점의 색상은 cyl(실린더 수)로 표현한다.



geom_point 는 siaxe=3 (숫자가 클수록 점의 크기가 커진다.)

