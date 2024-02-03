
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "docker  build  --no-cache -t ${image}:${tag} monitoring/grafana/. "

            }
        }
        stage('scan image') {
            steps {
                sh "docker run --rm -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy:latest image --insecure ${image}:${tag}"
            }
        }
        stage('push Image') {
            steps {
                sh "docker tag ${image}:${tag} poswark/${image}:${tag}"
                sh "docker push poswark/${image}:${tag}"
            }
        }

    }
}