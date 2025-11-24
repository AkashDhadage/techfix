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
      command:
        - cat
      tty: true
"""
        }
    }

    stages {
        stage('Clone Repository') {
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

        stage('Build') {
            steps {
                container('node') {
                    sh 'npm run build'
                }
            }
        }
    }
}
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
      command:
        - cat
      tty: true
"""
        }
    }

    stages {
        stage('Clone Repository') {
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

        stage('Build') {
            steps {
                container('node') {
                    sh 'npm run build'
                }
            }
        }
    }
}
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
      command:
        - cat
      tty: true
"""
        }
    }

    stages {
        stage('Clone Repository') {
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

        stage('Build') {
            steps {
                container('node') {
                    sh 'npm run build'
                }
            }
        }
    }
}
