// import hudson.model.Node.Mode
// import jenkins.model.*
// import hudson.slaves.*
// import hudson.plugins.sshslaves.*
// import hudson.plugins.sshslaves.verifiers.*

// def instance  = Jenkins.getInstance()

// instance.setNumExecutors(0)
// instance.setMode(Mode.EXCLUSIVE)

// instance.addNode(new DumbSlave(
//     'slave1',
//     null,
//     '/var/lib/jenkins',
//     '2',
//     Mode.NORMAL,
//     null,
//     new SSHLauncher(
//         'jenkins-slave1',
//         22,
//         'jenkins-ssh',
//         null,
//         null,
//         null,
//         null,
//         null,
//         0,
//         0,
//         new NonVerifyingKeyVerificationStrategy()
//     ),
//     RetentionStrategy.Always.INSTANCE,
//     new ArrayList<>(0)
// ))
