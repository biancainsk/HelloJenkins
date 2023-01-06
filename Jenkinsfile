pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Building..."'
        sh 'chmod +x build.sh'
        sh './build.sh'
        archiveArtifacts(artifacts: 'scripts/teste.out', fingerprint: true)
      }
    }

    stage('Test') {
      steps {
        sh 'echo "Running..."'
        sh 'chmod +x run.sh'
        sh './run.sh'
      }
    }
  }
}