pipeline {
    agent any
    parameters {
        string(name: 'VERSION', defaultvalue: '1.2.0', description: 'this is the default version')
        choices(name: 'VERSION', choices: '1.1.0', '1.2.0', '1.3.0', description: 'choose the correct version')
        booleanParam(name: 'execution', defaultvalue: true, description: 'parameters for pipeline')
    }
    environment {
        NEW_VERION = '1.2.0'
    // SERVER_CREDENTIALS = credentials('stark')
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
                        params.execution
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
