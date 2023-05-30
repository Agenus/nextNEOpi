#!/usr/bin/env bash


export AWS_REGION="us-east-1"
export ACCOUNT_ID="317432334668"
export REPO="mis/neoantigen"
#export ACCOUNT_ID="666813242062"
# 317432334668:repository/mis/neoantigenics
#export REPO="neoantigen"

docker login -u AWS -p $(aws ecr get-login-password --region "us-east-1") ${ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com

# complains about non tty device
#aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${ACCOUNT_ID}.dkr.ecr.region.amazonaws.com

#################################################
# Gatk3
#################################################
export TAG="gatk3"
export IMAGE="quay.io/biocontainers/gatk:3.5--hdfd78af_11"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

#################################################
# gatk4
#################################################

export TAG="gatk4"
export IMAGE="quay.io/biocontainers/gatk4:4.4.0.0--py36hdfd78af_0"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

#################################################
# nextneopi
#################################################

export IMAGE="dabbleofdevops/nextneopi:20230306"
export TAG="nextneopi"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

#################################################
# Ensembl VEP
#################################################
export TAG="allele_counter"
export IMAGE="quay.io/biocontainers/allele_counter:107.0--pl5321h4a94de4_0"
export IMAGE="quay.io/biocontainers/mulled-v2-c278c7398beb73294d78639a864352abef2931ce:dfe5aaa885de434adb2b490b68972c5840c6d761-0"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

#################################################
# mutect1
#################################################
export TAG="mutect1"
export IMAGE="dabbleofdevops/mutect1:20230306"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

#################################################
# pvacseq
#################################################
export TAG="pvacseq"
export IMAGE="dabbleofdevops/pvacseq:20230306"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

#################################################
# strelka
#################################################
export TAG="strelka"
export IMAGE="quay.io/biocontainers/strelka:2.9.10--h9ee0642_1"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

#################################################
# manta
#################################################
export TAG="manta"
export IMAGE="quay.io/biocontainers/manta:1.6.0--h9ee0642_1"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes


#################################################
# Ensembl VEP
#################################################
export TAG="vep"
export IMAGE="quay.io/biocontainers/ensembl-vep:107.0--pl5321h4a94de4_0"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

#################################################
# CNVKit
#################################################
export TAG="multiqc"
export IMAGE="quay.io/biocontainers/multiqc:1.13--pyhdfd78af_0"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

#################################################
# CNVKit
#################################################
export TAG="cnvkit"
export IMAGE="quay.io/biocontainers/cnvkit:0.9.9--pyhdfd78af_0"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

#################################################
# Ubuntu
#################################################

export TAG="ubuntu"
export IMAGE="ubuntu:20.04"
docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes



#################################################
# rigscore
#################################################

export IMAGE="dabbleofdevops/rigscore:20230306"
export TAG="rigscore"

docker pull \
  ${IMAGE}
docker tag \
  ${IMAGE} \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}
docker push \
  ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:${TAG}

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

echo "complete push"

docker pull ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:rigscore
docker pull ${ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/${REPO}:nextneopi

docker container stop $(docker container ls -aq)
docker system prune -f -a
docker system prune -f -a --volumes

echo "pull complete"