pipeline{
agent any
stages{
  stage('Build'){
     steps{
      echo "Building the project......."
    }
  }
stage('Test'){
     steps{
      echo "Test the project......."
    }
  }
stage('Deploy'){
     steps{
      echo "deploy the project......."
    }
  }
}

}
