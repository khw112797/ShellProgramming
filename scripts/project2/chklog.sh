#!/bin/bash

# Variables difinition
LOGFILE=/var/log/messages       # 모니터링 대상 로그파일 이름
TIMEINTERBAL=10                 # 비교 시간
TMP1=/tmp/tmp1 #$(mktemp)       # 첫 번째 임시파일
TMP2=/tmp/tmp2                  # 두 번째 임시파일
TMP3=/tmp/tmp3                  # 새로 추가된 안좋은 메시지 내용(메일 컨텐츠)


# 초기 임시 파일 생성
egrep -i 'warn|fail|error|crit|alert|emerg' $LOGFILE > $TMP1

# 초기 임시파일과 새로운 임시파일 비교
while true
do
    # 비교 시간 차이 (ex: 30s)
    sleep $TIMEINTERBAL

    #새로운 임시파일 생성
    egrep -i 'warn|fail|error|crit|alert|emerg' $LOGFILE > $TMP2

    # 초기 임시파일과 새로운 임시파일 비교
    # * 파일의 내용이 같으면 30초 쉬었다가 다시 비교
    # * 파일의 내용이 다르면 관리자에게 메일 전송
    diff $TMP1 $TMP > $TMP && continue

    # 관리자에게 메일 전송
    mailx -s '[ WARN ] 로그파일 점검 요망' root < $TMP3

    #로그파일 다시 초기화
    egrep -i 'warn|fail|error|crit|alert|emerg' $LOGFILE > $TMP1
done
