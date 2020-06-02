pipeline {
    options {
        ansiColor('xterm')
    }
    agent {
        dockerfile {
            args "--entrypoint=''"
        }
    }
    environment {
        ROBOT_TESTS_DIR = "$WORKSPACE"
        ROBOT_REPORTS_DIR = "$WORKSPACE/output_reports"
    }
    stages {
        stage('test') {
            steps {
                sh """
                    /opt/robotframework/bin/run-tests-in-virtual-screen.sh
                """
            }
        }
    }
}