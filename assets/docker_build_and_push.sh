#!/usr/bin/env bash

docker build -t gatk3 -f docker/gatk3/Dockerfile .
docker tag gatk3 dabbleofdevops/gatk3:latest
docker tag gatk3 dabbleofdevops/gatk3:20230306
docker push dabbleofdevops/gatk3:latest
docker push dabbleofdevops/gatk3:20230306

docker build -t nextneopi -f docker/nextneopi/Dockerfile .
docker tag nextneopi dabbleofdevops/nextneopi:latest
docker tag nextneopi dabbleofdevops/nextneopi:20230306
docker push dabbleofdevops/nextneopi:latest
docker push dabbleofdevops/nextneopi:20230306

docker build -t pvacseq -f docker/pvacseq/Dockerfile .
docker tag pvacseq dabbleofdevops/pvacseq:latest
docker tag pvacseq dabbleofdevops/pvacseq:20230306
docker push dabbleofdevops/pvacseq:20230306
docker push dabbleofdevops/pvacseq:latest

docker build -t mutect1 -f docker/mutect1/Dockerfile .
docker tag mutect1 dabbleofdevops/mutect1:latest
docker tag mutect1 dabbleofdevops/mutect1:20230306
docker push dabbleofdevops/mutect1:20230306
docker push dabbleofdevops/mutect1:latest

docker build -t vep -f docker/vep/Dockerfile .
docker tag vep dabbleofdevops/vep:latest
docker tag vep dabbleofdevops/vep:20230306
docker push dabbleofdevops/vep:20230306
docker push dabbleofdevops/vep:latest


docker build -t rigscore -f docker/rigscore/Dockerfile .
docker tag rigscore dabbleofdevops/rigscore:latest
docker tag rigscore dabbleofdevops/rigscore:20230306
docker push dabbleofdevops/rigscore:20230306
docker push dabbleofdevops/rigscore:latest
