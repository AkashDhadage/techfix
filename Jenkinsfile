pipeline {
    agent {
        kubernetes {
            yaml """
apiVersion: v1
kind: Pod
spec:
  containers:
    - name: node
      image: node:18
      command: ['cat']
      tty: true
    - name: docker
      image: docker
      command: ['cat']
      tty: true
"""
        }
    }

    environment {
        DOCKER_REGISTRY = "nexus.imcc.com:8085"
        IMAGE_NAME = "techfix"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/AkashDhadage/techfix.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                container('node') {
                    sh 'npm install'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                container('docker') {
                    sh '''
                    docker build -t $DOCKER_REGISTRY/$IMAGE_NAME:latest .
                    '''
                }
            }
        }

        stage('Docker Login & Push') {
            steps {
                container('docker') {
                    sh '''
                    echo "Imcc@2025" | docker login $DOCKER_REGISTRY -u student --password-stdin
                    docker push $DOCKER_REGISTRY/$IMAGE_NAME:latest
                    '''
                }
            }
        }
    }
}
