pipeline {
  agent any
  tools {
             maven ‘Maven 3.6.2’
             jdk ‘jdk8’
             }
  stages {
    stage('Maven Build') {
      steps {
                 sh ‘mvn clean install’
                }
    } 
    stage('Publish artifact') {
      steps {
          sshPublisher(publishers: [sshPublisherDesc(configName: 'ansible_host', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'ansible-playbook /opt/playbooks/copypb.yml', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '//opt//playbooks', remoteDirectorySDF: false, removePrefix: '', sourceFiles: 'webapp/target/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
      }
    } 
          }
}
