#dplyr 패키지
#변수명 바꾸기, filter...
#plyr 패키지를 c++ 언어로 개선한 패키지

#기본 내장 데이터 세트 mtcars
nrow(mtcars)
str(mtcars)

library(dplyr)

filter(mtcars, cyl == 4) #4기통 자동차
filter(mtcars, mpg >= 20) #연비 20이상
arrange(mtcars, wt, cyl) # 정렬 기준
#첫번째 변수로 먼저 정렬하고
#같은 값이 있으면 두 번째 변수로 정렬
select(mtcars, am, gear)

#새로운 열 추가시 $
#mutate() : 열을 추가
mutate(mtcars, years="1974")
#mtcars 데이터에 years 열 추가, 값은 1974

#중복 제거 distinct()
distinct(mtcars,cyl)
distinct(mtcars, gear)
distinct(mtcars, cyl, gear)

#데이터 요약 및 샘플 추출
#summarise(데이터 세트, 결과저장열이름 = 통계함수, ...)
# + sum(), mean(), median()...
summarise(mtcars, cyl_mean = mean(cyl),cyl_min = min(cyl), cyl_max = max(cyl))

#그룹별로 요약하기
#실린더를 기준으로 그룹 나누기
#group_by(데이터세트, 기준열)
gr_cyl <- group_by(mtcars, cyl)
gr_cyl
summarise(gr_cyl, n()) #cyl 별 개수 요약

# %>% 연산자도 dplyr 패키지의 연산자
# 변수에 저장하지 않고 바로 이어서 사용
group_by(mtcars, cyl) %>% summarise(n())

# 시각화를 패키지를 이용해서
#ggplot2 패키지를 사용해서 그래프
#ggplot2 dplyr reshape2 ==> R에서 제일 많이 쓰는 패키지
install.packages("ggplot2")
library(ggplot2)

#기본적인 틀을 만든 다음에 다양한 이미지 객체 레이어를 틀에 포개는 방법

#그래프 기본 틀 만드는 함수
# ggplot(데이터세트, aes(데이터속성))
str(airquality)
ggplot(airquality, aes(x=Day, y=Temp))

#그래프에 점찍기 (산점도)
#geom_point()
ggplot(airquality, aes(x=Day, y=Temp)) + geom_point(size=3, color="pink")

#꺾은 선 그래프 geom_line()
ggplot(airquality, aes(x=Day, y=Temp)) + geom_line

#막대 그래프
ggplot(mtcars, aes(x=factor(cyl)))+geom_bar(aes(fill=factor(gear)))

#피자 그래프
ggplot(mtcars, aes(x=factor(cyl)))+geom_bar(aes(fill=factor(gear)))+coord_polar()

#상자그림 & 히스토그램
#geom_boxplot()

ggplot(airquality, aes(x=Day, y=Temp, group=day))+geom_boxplot()
ggplot(airquality, aes(Temp)) + geom_histogram(binwidth = 1)

#미국의 경제 지표를 날짜별로 나타낸 데이터 세트
str(economics)
#사선 추가하는 geom_abline()
#intercept : y절편
#slope : 기울기

#평행선 추가하는 geom_hline()
#yintercept : 
ggplot(economics, aes(x=date , y=psavert)) + geom_line() + geom_abline(intercept = 12.18671, slope = -0.0005444)
ggplot(economics, aes(x=date, y=psavert)) + geom_line() +  geom_hline(yintercept = mean(economics$psavert))

#수직선 추가하는 geom_vline()
#xintercept : x값
library(dplyr)
#개인 저축률(psavert)이 가장 낮았던 날을 x값으로 주고 싶다.
x_inter <- filter(economics, psavert == min(economics$psavert))$date
ggplot(economics, aes(x=date, y=psavert)) + geom_line() + geom_vline(xintercept = x_inter)

#그래프 위에 text 입력
#geom_text()
#label : 텍스트 표시할 값
#vjust : 텍스트 세로 위치
#hjust : 텍스트 가로 위치
ggplot(airquality, aes(x=Day, y=Temp)) + geom_point() + geom_text(aes(label=Temp, vjust=0, hjust=0))

#그래프 위에 도형 그리기
#annotate("모양", xmin = x축 시작, xmax= x축 끝, ymin = y축 시작, ymax = y축 끝)
#alpha = 투명도, fill = 색상
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() + annotate("rect", xmin=3, xmax=4, ymin=12, ymax=21, alpha=0.5, fill="skyblue") + annotate("segment", x=2.5, xend=3.7, y=10, yend=17, color="red",arrow=arrow())+annotate("text", x=2.5, y=10, label="point")
#화살표 그려넣어서 특정 지점 강조
#모양을 segment, arrow = arrow() 추가
#선을 그릴 때는 xmin 대신 x, ymin 대신 y
#모양을 text로 하면 텍스트도 추가 가능능

#막대그래프 + 제목 + 테마 적용
ggplot(mtcars, aes(x=gear)) + geom_bar() + labs(x="기여수" , y="자동차수", title="변속기 기어별 자동차 개수") +theme_bw()
