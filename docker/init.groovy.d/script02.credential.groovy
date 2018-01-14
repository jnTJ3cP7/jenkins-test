// import jenkins.model.*
// import com.cloudbees.plugins.credentials.*
// import com.cloudbees.plugins.credentials.common.*
// import com.cloudbees.plugins.credentials.domains.*
// import com.cloudbees.jenkins.plugins.sshcredentials.impl.*
// import hudson.plugins.sshslaves.*

// String private_key = '''
// -----BEGIN RSA PRIVATE KEY-----
// xxxxxxxxxxxxxxxxxxxxxx
// -----END RSA PRIVATE KEY-----
// '''

// global_domain = Domain.global()
// credentials_store = Jenkins.instance.getExtensionList(
//     'com.cloudbees.plugins.credentials.SystemCredentialsProvider'
// )[0].getStore()

// credentials = new BasicSSHUserPrivateKey(
//   CredentialsScope.GLOBAL,
//   "jenkins-ssh",
//   "jenkins",
//   new BasicSSHUserPrivateKey.UsersPrivateKeySource(),
//   "",
//   "jenkins ssh"
// )
// credentials_store.addCredentials(global_domain, credentials)