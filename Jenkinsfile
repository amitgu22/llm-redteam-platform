pipeline {
    agent any

    parameters {
        choice(name: 'PROVIDER', choices: ['openai:gpt-4', 'anthropic:claude-3', 'local'], description: 'Select Model Provider')
        choice(name: 'ATTACK_TYPE', choices: ['injection', 'jailbreak', 'data_exfiltration', 'all'], description: 'Select Attack Type')
    }

    environment {
        DOCKER_IMAGE = "llm-redteam"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git 'https://github.com/your-repo/llm-redteam-platform.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Run Red Team Pipeline') {
            steps {
                sh """
                docker run --rm \
                  -e OPENAI_API_KEY=$OPENAI_API_KEY \
                  
                  $DOCKER_IMAGE \
                  bash run.sh ${params.PROVIDER} ${params.ATTACK_TYPE}
                """
            }
        }

        stage('Publish Reports') {
            steps {
                archiveArtifacts artifacts: 'reports/*', fingerprint: true
            }
        }
    }
}