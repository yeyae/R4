#한글 데이터 분석

install.packages("multilinguer")
install.packages("remotes")
#github 링크를 통해서 패키지를 다운로드

remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"))
install.packages("rJava")

library(multilinguer)
library(rJava)
library(KoNLP)
devtools::install_github("lchiffon/wordcloud2")
library(wordcloud2)

#KoNLP 패키지의 한글 사전 설정
#분석하고자 하는 한글 문장에 포함된 단어
#품사별로 구분, 형태소 분석석

useSejongDic()
useNIADic()
#애국가를 그대로 가져온 word_data
word_data <- readLines("애국가(가사).txt")
#애국가에서 각행에서 명사만 추출하여 word_data2
word_data2 <- sapply(word_data, extractNoun, USE.NAMES = F )
#sapply는 해당 데이터세트의 모든 행에 함수를 적용
#USE.NAMES 옵션은 데이터의 값에 이름을 붙일거냐?
word_data2
add_words<-c("백두산","남산","철갑","가을","하늘","달")
buildDictionary(user_dic = data.frame(add_words, rep("ncn", length(add_words))), replace_usr_dic = T)
word_data2

#2차 데이터 구조인 행렬을 1차원인 벡터로 변환
undata <- unlist(word_data2)
undata

#추출된 명사가 몇 번 나왔는지 빈도수를 확인
word_table <- table(undata)
word_table

#단어 길이가 2이상인 것만 추출해서 사용하기
undata2 <- Filter(function(x){ nchar(x) >= 2}, undata)
undata2

#단어 길이가 2이상인 것들 빈도수 확인
word_table2 <- table(undata2)
word_table2

sort(word_table2, decreasing = T)
library(wordcloud2)
#R에서 워드클라우드를 그리는 함수를 지원하는 패키지
wordcloud2(word_table2, color = "random-light", shape="star")

#demoFreq 데이터 세트 => 내장된 영어 단어 모음
wordcloud2(demoFreq)
wordcloud2(demoFreq, color=rep_len(c("red","blue"), nrow(demoFreq)))

#색이 검정색 / 바탕이 흰색인 이미지 준비
wordcloud2(demoFreq, figPath="twitter.jpg")
