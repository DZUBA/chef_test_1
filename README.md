# chef_task_1

TODO: Enter the cookbook description here.

Q: What is cookstyle?

A: Cookstyle is library for RuboCop, which reviewing latest core updates code style and rules.

Q: What is Berkshelf?

A: Berkshelf is dependences manager for Chef's cookbooks.

Q: Berkshelf commands to:

- Create cookbook

A: $ chef generate cookbook $cookbook_name

Q: What is Vagrant?

A: Vagrant is virtual enviroment with configuration management tools for VirtualBox, AWS EC2, etc.

Q: What's Vagrant providers and provisioners?

A: Providers are hypervisors which Vagrant supports, like VirtualBox, EC2, etc. 
Provisiners are configuration management products which allows to install and configure software and system while you deploying virtual enviroment. They are Chef, Ansible, etc.

Q: What Vagrant comands to:
   
   Q: run machine.

   A: $ vagrant init $project/$os_version
      $ vagrant up
   
   Q: cleanup vagrant workspace ( reset space to blank )
   
   A: $ vagrant destroy
   
   Q: reprovision already running machine.
   
   A: $ vagrant provision
   
Q: What is project name that's supports images for test kitchen

A: bento

Q: What's Chef resource?

A: Chef resources is policies. Policies which we use to describe desirable system configuration, statement, etc.

Q: What's Chef resource you're used in your cookbook.

A: user, group and file

Q: How much time it takes to:
    
    Q: bring machine up for the first time.
    A: On my MacBook Pro 2011 it take near 7 minutes for the first time.
    
    Q: Re-provision machine.
    A: Less than a minute
    
    Q: destroy machine.
    A: Less than a minute
    
Q: Explain, Why above times differ?

A: When we bring machine up for the first time, if we don't use local vagrant box, vagrant begin downloading box from repo which we gave to him. After that it starts VM deployment, booting it, updating system system packages and configure our VM via our vagrant provisiner. So mostly it depends if we have box on our host, our network channel and system configuration.
In re-provisioning we just reconfiguring VM by our vagrant provisiner, without system reinstall. Everything depends what piece of work we doing, and also if we installing packages or soft - what network channel we got.
