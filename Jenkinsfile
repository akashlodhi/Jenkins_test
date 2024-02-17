pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                when {
                    expression {
                        BRANCH_NAME == 'test' || BRANCH_NAME == main
                    }
                }
                echo 'building the application'
            }
        }
        stage('test') {
            steps {
                echo 'testing the application'
            }
        }
            stage('deploy') {
                steps {
                    echo 'Deploying the application'
                }
            }
    }
}
