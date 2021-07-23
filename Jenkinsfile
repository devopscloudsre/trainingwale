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
			
            post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    sh "aws s3 cp /jenkins-home-new/workspace/docker-swarm/target/LoginRegisterApp.war s3://artifactory-9am-weekend"
					emailext {}
                }
            }
        }
    }
