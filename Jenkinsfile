pipeline{
agent any

stages{
  stage('Build'){
     steps{
      echo "Building the Code......."
      sh "mvn clean"
    }
  }
stage('Test'){
     steps{
      echo "Test the project......."
       sh "mvn test"
    }
  }
stage('Compile'){
     steps{
      echo "Test the project......."
       sh "mvn compile"
    }
  }
stage('Deploy'){
     steps{
      echo "deploy the project......."
     sh "mvn install"
    }
  }
  stage('Create Docker Image'){
    steps{
      
      sh "docker stop jenkisnappfile"
      sh "docker system prune -a -f"
      sh "docker build -f Dockerfile -t jenkisnappfile ."
      sh "docker container run -d --name jenkisnappfile -p 8989:8989 jenkisnappfile"
      sh "docker login -u pravat199665 -p Saibaba@91"
      sh "docker tag jenkisnappfile pravat199665/jenkisnappfile"
      sh "docker push pravat199665/jenkisnappfile"
      sh "docker logout"
      
    }
  }

  
}

}
