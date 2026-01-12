# 기본형식
# FROM <이미지>:<태그>
# FROM mysql
# FROM mysql:8
FROM alpine:3.19

# WORKDIR <폴더이름>
# WORKDIR /app
# WORKDIR /home/test/myapp
WORKDIR /app

# RUN <리눅스 커맨드>
RUN apk add --no-cache curl

# COPY <타겟파일> <복사할위치>
COPY hello.txt .

# CMD ["ARG1", "ARG2", ...]
CMD ["cat", "hello.txt"]

# ENV KEY=VALUE
ENV MY_NAME=KIM
ENV MY_ENV=LOCAL

# 빌드
# docker build -t <이미지명>:<태그> <빌드컨텍스트>
