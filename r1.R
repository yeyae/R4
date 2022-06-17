# R code 입력 후 실행
print("Hello World!") # "Hello World!" 출력
print("Hello BigData!")

help()
help(print)

x <- 10 #숫자형 데이터 10을 x라는 변수에 할당
print (x1) #x를 출력
x1 <- c(10, 20, 30)
print (x1)
x2 <- c(10:15)
print (x2)
x3 <- seq(10,15)
x4 <- seq(1,10,by=4)
print(x4)
y <- "HI"
print(y)
y1 <- c("Hello" , "Hi" , "Hello~~!")
print(y1)

#-------------------------------------------------------------------
ex_vector1 <- c(-1, 0, 1) #데이터 -1, 0, 1을 ex_vector1에 할당
#숫자형 벡터 (실수형 벡터) ==> 연산도 가능 
print(ex_vector1)
str(ex_vector1) #변수의 속성을 확인한다. str()
length(ex_vector1) #벡터 ex_vector1의 길이

ex_vector2 <-c("Hello", "Hi~!") #문자 데이터 Hello, Hi~!를 ex_vector2에 할당
print(ex_vector2)
ex_vector3 <- c("1", "2", "3")
print(ex_vector3)
#문자 데이터를 따옴표 ("" 또는 '') 로 감싸서 표현
str(ex_vector2)

#논리형 벡터 logical vector 값이 TRUE FALSE
ex_vector4 <- c(TRUE, FALSE, TRUE, FALSE)
print(ex_vector4)
str(ex_vector4) # 데이터 타입, 길이, 값 다 알려준다.
typeof(ex_vector4) #타입만 정확하게 알려주는 함수 

remove(ex_vector1) #rm(ex_vector1)도 가능
print(ex_vector1)

x<-c(1,2,3,4,5,6) #벡터 x 생성
matrix(x , nrow = 2 , ncol = 3) #벡터를 통해 행렬 생성
matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2, byrow = T) #행이 3개, 열이 2개로 데이터 순서가 왼쪽에서 오른쪽으로 변경됨

y <- c(1,2,3,4,5,6)
array(y, dim=c(2,2,3)) #변수 y를 2+2 행렬, 3차원 배열 

list1 <- list(c(1,2,3), "Hello")
print(list1)
str(list1)
list2 <- c("5", 5)
str(list2) #문자열이 하나라도 포함되어 있으면 나머지도 문자로 인식됨

#데이터 프레임 구성을 위한 벡터 변수 생성
ID <-c(1:10)
SEX <-c("F", "M", "F", "M", "M", "F", "F", "F", "F","M")
AGE <-c(50, 40, 30, 20, 10, 60, 50, 20, 30, 39)
AREA<-c("서울", "경기", "제주", "서울", "경북", "전남", "서울", "제주", "경남", "경기")

#데이터 프레임
dataframe_ex <- data.frame(ID, SEX, AGE, AREA) #
print(dataframe_ex)
str(dataframe_ex)


#4,5문제
ID<-c("1","2","3","4","5")
MID_EXAM<-c(10,25,100,75,30)
CLASS<-c("1반","2반","3반","1반", "2반")

examples_test<- data.frame(ID, MID_EXAM, CLASS)
print(examples_test)

ID <- c(1,2,3,4,5)
View(example_test)

install.packages("readxl") # readxl 패키지 설치
library(readxl) #readxl 패키지 로드

excel_data_ex <- read_excel("data_ex.xls")
View(excel_data_ex)

ex_data <- read.table("data_ex.txt")
View(ex_data)

ex_data <- read.table("data_ex1.txt")
View(ex_data)

ex_data <- read.table("data_ex1.txt", header=TRUE, sep=",", fileEncoding = "utf-8")
View(ex_data)

varname <- c("ID","SEX", "AGE","AREA")
ex2_data <- read.table("data_ex2.txt", sep=",",col.names = varname, fileEncoding = "utf-8")
View(ex2_data)
#텍스트 파일에 header 정보 미포함시 우리가 임의로 header 이름을 정해서 넣는 옵션 : col.names


ID <- c(1,2,3,4,5)
SEX <- c("F", "M","F", "M", "M")

data_ex <- data.frame(ID =ID, SEX =SEX)
View(data_ex)
#rda 확장자는 r전용 확장자자
save(data_ex, file="data_ex.rda")
load("data_ex.rda")
View(data_ex)

#자주 사용하는 데이터 형식 csv .. 
write.csv(data_ex, file="data_ex_ex.csv")
#csv : comma seperated values
write.table(data_ex, file="data_ex_ex.txt")

1+2
5-3
3*7
20/4
-1+3

20%/%7 # 20을 7로 나눈 몫몫
20%%7 #20을 7로 나눈 나머지지
6^2 #6의 제곱 
6**2 #6의 제곱
2^10 #2의 10제곱
2**10 #2의 10제곱

5 > 3
5 >= 6
5 < 3
5 <= 6
5 == 5
5 != 5

install.packages("readxl")
library(readxl)
exdata1 <- read_excel("Sample1.xlsx")
View(exdata1)

str(exdata1)
dim(exdata1)#데이터세트의 데이터프레임을 확인
#데이터가 몇 행 몇 열로 되어있는지 확인
ls(exdata1)
#데이터세트에 포함된 변수명 확인

#데이터 가공의 효용성을 높이기 위해서
#변수명을 규칙적으로 변경하는 것이 좋다.
#변수명에는 동일한 규칙을 적용

install.packages("dplyr")
library(dplyr)

#exdata1 데이터 세트에서 AMT17 변수명을 바꿔준다
exdata1 <- rename(exdata1, Y17_AMT = AMT17, Y16_AMT = AMT16 ) #왼쪽에 바꾸고 싶은 명, 오른쪽에 원래 있던 명
View(exdata1)

#데이터 프레임 안에 새로운 변수 생성하기
#파생 변수
#보유한 데이터를 기반으로 연산 작업을 통해 
#새로운 결과를 얻고 그 결과로 변수를 생성

#exdata 데이터 세트에서 Y17_AMT 와 Y16_AMT를 더해서 새로운 변수인 AMT를 생성한다.
exdata1$AMT <- exdata1$Y17_AMT + exdata1$Y16_AMT
View(exdata1)
#exdata1 데이터 세트에서 Y17_CNT와 Y16_CNT를 더해서 CNT 생성
exdata1$CNT <- exdata1$Y17_CNT + exdata1$Y16_CNT
View(exdata1)
#평균을 구하기가 가능해졌다
#평균을 구해서 AVG_AMT라는 변수를 생성
exdata1$AVG_AMT <- exdata1$AMT/exdata1$CNT
View(exdata1)

#다른방식으로 변수를 생성
#조건문 if(AGE >= 50) else
#조건의 결과에 따라 데이터 값을 설정한 새로운 변수 생성
#AGE 값이 50살 이상이면 Y, 아니면 N
exdata1$AGE50_YN <- ifelse(exdata1$AGE >= 50, "Y", "N")
View(exdata1)

#AGE >= 50 / 40 <= AGE < 50 / 30 <= AGE < 40 ...
exdata1$AGE_GR10 <- ifelse(exdata1$AGE >= 50 , "50++" ,
                           ifelse(exdata1$AGE >= 40, "40~49",
                                  ifelse(exdata1$AGE >= 30, "30~39",
                                         ifelse(exdata1$AGE >= 20, "20~29" , "10~19"))))
View(exdata1)

#AGE_GRADE 변수 AGE 1~18세는 "A" 19~40세는 "B" 41~60세는 "C", 나머지는 "D" 값을 부여하는 명령문을 실행
exdata1$AGE_GRADE <- ifelse(exdata1$AGE >60, "D",
                            ifelse(exdata1$AGE>=41, "C",
                                   ifelse(exdata1$AGE>=19, "B",
                                          ifelse(exdata$AGE>=1, "A"))))

View(exdata1)

#exdata1$AGE_GRADE <- ifelse(exdata1$AGE <= 18, "A",
                            #ifelse(exdata1$AGE <= 40, "B",
                                   #ifelse(exdata1$AGE <= 60, "C", "D")))
#View(exdata1)

#나머지는 "D" 값을 부여하는 명령문을 실행 & 사용해보기
exdata1$AGE_GRADE2 <- ifelse(1<=exdata1$AGE&exdata1$AGE<=18, "A",
                             ifelse(19<=exdata1$AGE&exdata1$AGE<=40, "B",
                                    ifelse(41<=exdata1$AGE&exdata1$AGE<=60, "C","D")))
View(exdata1)

#데이터 추출, 정제
library(dplyr)

#필요한 데이터를 추출 (조건에 맞는 데이터만 추출)
#select(추출하고 싶은 변수 이름)
exdata1 %>% select(ID)
# %>% 파이프 연산자(dplyr 패키지) 왼쪽에 있는 결과를 오른쪽에 연결한다.
exdata1 %>% select(ID, AREA, Y17_CNT)
#선택한 변수를 제외하고 추출하기
exdata1 %>% select(-AREA)
exdata1 %>% select(-AREA, Y17_CNT)

#조건을 만족하는 데이터만 추출 filter()
#AREA가 서울인 데이터만 추출하기
exdata1 %>% filter(AREA == "서울")
#AREA 가 서울 + Y17_CNT 가 10건 이상인 데이터만 추출하기
exdata1 %>% filter(AREA == "서울" & Y17_CNT >= 10)

#데이터 정렬하기 어떤 변수를 기준으로 정렬할 건지
#arrange() : 오름차순 // arrange(desc()) : 내림차순
#나이순으로 exdata1을 정렬하고 싶다.
exdata1 %>% arrange(AGE)
exdata1 %>% arrange(desc(AGE))
exdata1 %>% arrange(desc(AGE), Y17_AMT)

#요약함수 기본 통계를 구하는 함수
# n() : 빈도
# min() : 최솟값
# max() : 최댓값
# quantile() : 분위수 1사분위수, 2사분위수, 3사분위수,,
#                0~25% 해당,     25~50%   ,  ~75% ...
# sum() : 합계
# mean() : 평균
exdata1 %>% summarise(TOT_Y17_AMT = sum(Y17_AMT))
exdata1 %>% group_by(AREA) %>% summarise(SUM_Y17_AMT = sum(Y17_AMT))

#데이터 결합
library(readxl)
m_history <- read_excel("Sample2_m_history.xlsx")
f_history <- read_excel("Sample3_f_history.xlsx")
View(f_history)
#세로 결합 bind_rows
exdata_bindjoin <- bind_rows(m_history, f_history)
View(exdata_bindjoin)

#가로 결합
#left_join(dataset1, dataset2, by=변수명)
#inner_join(dataset1, dataset2, by=변수명)
#full_join(dataset1, dataset2, by=변수명)

y17_history <- read_excel("Sample4_y17_history.xlsx")
y16_history <- read_excel("Sample5_y16_history.xlsx")
View(y17_history)
#지정한 변수와 왼쪽 데이터세트를 기준으로 가로변
bind_col_left <- left_join(y17_history, y16_history, by="ID")
View(bind_col_left)

#지정한 변수의 값이 같을 때만 결합
bind_col_inner<-inner_join(y17_history, y16_history, by="ID")
View(bind_col_inner)

#지정한 변수를 기준으로 모든 데이터를 결합
bind_col_full<-full_join(y17_history, y16_history, by="ID")
View(bind_col_full)

x1 <- c(1,2, NA, 4, 5)
sum(x1)

#기초 통계 함수
#평균 : mean()
#중위값 : median() 가운데 값
#최댓값: max()
#최솟값: min()
#범위 : range() 최솟값 ~ 최댓값

#분위수 : quantile() 분위수
#분산 : var() 평균에서 퍼진 정도를 설명
#분산값이 작을수록 평균에 데이터가 몰려있다
#표준편차 : sd() 데이터값이 퍼진 정도를 설명
#청도 : kurtosis() 데이터분포가 뾰족한 정도를 설명
#왜도 : skew() 데이터분포가 비대칭성을 설명명

install.packages("psych")
library(psych)

x1 <- c(1,2,3,4,5,6,100)
mean(x1)
median(x1)
max(x1)
min(x1)
range(x1)
quantile(x1, probs = 0.25) #1사분위수
quantile(x1, probs = 0.5) #2사분위수(=중앙값)
quantile(x1, probs = 0.75) #3사분위수
quantile(x1, probs = 0.8) #하위 80% 지점의 값
var(x1)
sd(x1)
kurtosi(x1)
skew(x1)

install.packages("descr")
library(descr)

exdata1 <- read_excel("Sample1.xlsx")
View(exdata1)

#빈도수 분석
#어떤 값이 얼마나 많이 관측되었는지를 확인
#freq() 빈도수 분석, descr 패키지에 포함
freq_test <- freq(exdata1$AREA)
print(freq_test)

#그래프를 사용해서 데이터를 표현하는 방법
#데이터를 이해하기 쉽게 이미지화 또는 시각화
View(exdata1)

#줄기 - 잎 그림
#변수의 값을 자릿수에 따라 분류하여 시각화
#큰 자릿수의 값은 줄기에 표현, 작은 자릿수의 값은 잎에 표현
#15, 16, 21, 23, 26, 30, 32, 41
#줄기 잎
#1    5,6
#2    1,3,6
#3    0,2
#4    1
stem(exdata1$AGE)

#히스토그램(막대모양 그래프, 막대그래프와는 뜻이 다름)
#연속형 데이터를 일정하게 나눈 구간(계급)을 가로축
#각 구간에 해당하는 데이터의 수(도수)를 세로축으로 그린 그래프
#hist()
hist(exdata1$AGE)
hist(exdata1$AGE, xlim = c(0,60), ylim=c(0,8),main = "AGE 분포")

#막대그래프
#이산형(범주형) 데이터에 대해 수량이 많고 적음을 나타낼 때 적합한 그래프
#연속적이지 않은, 연속성이 없는 데이터에 사용
freq(exdata1$SEX, plot=T, main="성별")
#별다른 패키지 설치 없이 막대 그래프 그리기
# barplot(): 이 함수는 빈도수를 분석하는 기능이 없음
#처리를 해주고 나서 barplot() 함수를 사용
dist_sex <- table(exdata1$SEX)
print(dist_sex)
barplot(dist_sex)
barplot(dist_sex, ylim=c(0,8), main="성별", xlab="SEX", ylab="Freq", names=c("Female", "Male"), col=c("white", "black"))

#상자 그림
#분포 및 이상치를 확인하는 그래프
boxplot(exdata1$Y17_CNT , exdata1$Y16_CNT, ylim=c(0,60), main="박스", names=c("17년 건수", "16년 건수"), col=c("green", "yellow"))

y1 <- c(1,2,3,4,5,6,7,8,9,10, 20, 25)
boxplot(y1)

mid_exam <- read_excel('mid_exam.xlsx')
View(mid_exam)
mid_exam<- rename(mid_exam, math_mid = MATH, eng_mid = ENG )

final_exam <-read_excel('final_exam.xlsx')
View(final_ex)
total_exam$MATH_AVG <- (total_exam$math_mid + total_exam$math_final)/2
total_exam$ENG_AVG <- (total_exam$eng_mid + total_exam$eng_final)/2
View(total_exam)

total_exam$TOTAL_AVG <- (total_exam$math_mid + total_exam$math_final + total_exam$eng_mid + total_exam$eng_final)/4
View(total_exam)

mean(total_exam$MATH_AVG)
mean(total_exam$ENG_AVG)

total_exam %>% filter(math_mid >= 80 & eng_mid >= 90 )

boxplot(total_exam$MATH_AVG , total_exam$MATH_AVG, main="박스", names=c("수학평균", "영어평균"), col=c("blue", "orange"))
final_exam<- rename(final_exam, math_final = MATH, eng_final= ENG )

total_exam <- inner_join(mid_exam, final_exam, by="ID")
View(total_exam)

#기존데이터를 변형
#가로로 긴 데이터 모양을 세로로 전환
#melt() reshape2패키지 설치
#melt(데이터세트, id.var = "기준열", measure.vars = c(......))
install.packages("reshape2")
library(reshape2)

print(airquality)
head(airquality) #데이터가 너무 클 때 윗부분만 조금 잘라서 보기
names(airquality) <- tolower(names(airquality))
melt_test <- melt(airquality)
print('melt_test')
head(melt_test)
tail(melt_test)

#month 와 day에 따른 오존 확인하기
melt_test2 <- melt(airquality, id.vars = c("month" , "day"), mesure.vars = "ozone")
head(melt_test2)

#세로로 긴 데이터 모양을 가로로 전환
#cast(): reshape2 패키지 필요
#우리가 자주 사용하는 데이터 구조
#dataframe은 dcast() 라는 함수 사용
#dcast(데이터세트, 기준열~변환열)
library(reshape2)
head(melt_test)
#na.rm 옵션 ==> 결측 제거
aq_melt <- melt(airquality, id=c("month", "day"), na.rm = F)
head(aq_melt)

aq_dcast <- dcast(aq_melt, month + day ~variable)
head(aq_dcast)

View(airquality)
View(aq_melt)

dcast(aq_melt, month~variable, mean)