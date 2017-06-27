env.DOCKER_REPOSITORY = "registry.corp.mobile.de/techhack2017/demo-app"
node('cloud') {
  stage('checkout') {
    checkout scm

    gitCommit = sh(script: "git rev-parse --short=6 HEAD", returnStdout: true).trim()
    env.REVISION = "${BRANCH_NAME}-${BUILD_ID}-${gitCommit}".replaceAll("/", "-")
  }
  stage('docker build') {
    env.DOCKER_IMAGE_ID = "${env.DOCKER_REPOSITORY}:${env.REVISION}"
    sh "docker build -t ${env.DOCKER_IMAGE_ID} ."
  }
}
