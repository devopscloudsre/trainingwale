pipeline {
    agent any
    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven"
    }
	environment {
		Triggered_BY = "Auto Triggered"
		
	}
	
    stages {
        stage('git clone') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'dev', url: 'https://github.com/mailrahulsre/java-db-Login.git'
				}
		}
				
        stage('build code') {
            steps {
                // Run Maven on a Unix agent.
                sh "mvn clean package"
				}
		}

        }
    }
