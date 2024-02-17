pipeline {
    agent any
    parameters {
        choice(name: 'VERSION', choices: ['1.1.0', '1.2.0', '1.3.0'], description: '')
        booleanParam(name: 'executeTests', defaultValue: true, description: '')
    }

    stages {
        stage('build') {
            steps {
                echo 'building the application'
                echo "building the application ${NEW_VERSION}"
            }
        }
        stage('test') {
            steps {
                echo 'testing the application'
                when {
                    expression {
                        params.executeTests
                    }
                }
            }
        }
            stage('deploy') {
                steps {
                    echo 'Deploying the application'
                    echo "deploy with ${params.VERSION}"
                }
            }
    }
}
