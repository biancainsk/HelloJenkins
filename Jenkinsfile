pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Building..."'
        sh 'chmod +x build.sh'
        sh '/var/jenkins_home/workspace/HelloJenkins_main/build.sh'
        archiveArtifacts(artifacts: 'build/teste.out', fingerprint: true)
      }
    }

    stage('Test') {
      steps {
        sh 'echo "Running..."'
        sh 'chmod +x run.sh'
        sh '/var/jenkins_home/workspace/HelloJenkins_main/run.sh'
      }
    }

  }
}