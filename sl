   42  ls
   43  cd roles/
   44  ls
   45  vi rhel_subscribe/
   46  vi rhel_subscribe/tasks/main.yml 
   47  cd ~
   48  oc get po 
   49  oc get po -o wide
   50  oc get event 
   51  oc get po
   52  oc project default
   53  oc get po 
   54  oc describe po docker-registry-2-xd59s
   55  oc rsh docker-registry-2-xd59s
   56  vi /etc/secrets
   57  ls /etc/secrets
   58  oc get po
   59  vi /etc/docker/daemon.json 
   60   echo -n | openssl s_client -connect 10.74.253.114:443 -servername docker-registry-default.san.gsslab.pnq2.redhat.com 2>&1 | openssl x509 -noout -text
   61  oc get po
   62  oc edit dc docker-registry
   63  oc rsh docker-registry-2-xd59s
   64  oc get project
   65  oc get project -o yaml http > http.yml
   66  oc project http
   67  oc export all -o yaml > http.yml
   68  ls
   69  oc delete project http
   70  oc new-project abc
   71  oc create -f http.yml 
   72  oc get po -w
   73  oc get all
   74  oc get po
   75  oc get build
   76  oc start-build bc/bgdemo
   77  oc get po -w
   78  oc logs -g bc/bgdemo
   79  oc logs -f bc/bgdemo
   80  oc get po -w
   81  oc get event 
   82  oc get po -o wide
   83  oc get build
   84  oc get dc
   85  oc get build
   86  oc get po
   87  oc log -f bc/bgdemo
   88  oc logs -f bc/bgdemo
   89  vi http.yml 
   90  oc version 
   91  oc project
   92  oc delete project abc
   93  docker ps -a
   94  vi /etc/origin/node/node-config.yaml 
   95  docker ps -a | wc -l
   96  systemctl restart atomic-openshift-node.service 
   97  docker ps -a | wc -l
   98  docker ps -a |grep k8s | grep Exit| wc -l
   99  vi /etc/origin/node/node-config.yaml 
  100  systemctl restart atomic-openshift-node.service 
  101  docker ps -a |grep k8s | grep Exit| wc -l
  102  vi /etc/origin/node/node-config.yaml 
  103  systemctl restart atomic-openshift-node.service 
  104  docker ps -a |grep k8s | grep Exit| wc -l
  105  docker ps -a |grep k8s | grep Exit
  106  docker ps -a |grep k8s | grep Exit| wc -l
  107  vi /etc/origin/node/node-config.yaml 
  108  docker ps -a |grep k8s | grep Exit| wc -l
  109  vi /etc/origin/node/node-config.yaml 
  110  systemctl restart atomic-openshift-node.service 
  111  docker ps -a |grep k8s | grep Exit| wc -l
  112  vi /etc/origin/node/node-config.yaml 
  113  docker ps -a |grep k8s | grep Exit| wc -l
  114  docker ps -a |grep k8s | wc -l
  115  docker ps -a |grep k8s 
  116  vi /etc/origin/node/node-config.yaml 
  117  systemctl restart atomic-openshift-node.service 
  118  oc get nodes
  119  systemctl restart atomic-openshift-node.service 
  120  oc get nodes
  121  systemctl status atomic-openshift-node.service 
  122  oc describe node vm253-114.gsslab.pnq2.redhat.com
  123  oc get nodes
  124  ssh vm250-103.gsslab.pnq2.redhat.com
  125  vi /etc/origin/master/master-config.yaml
  126  oc projects
  127  oc get po
  128  oc get nodes
  129  oc get nodes
  130  ping 10.74.250.49 vm250-49.gsslab.pnq2.redhat.com
  131  10.74.250.49 vm250-49.gsslab.pnq2.redhat.com
  132  ping vm250-49.gsslab.pnq2.redhat.com
  133  cd /etc/origin/master/
  134  ls
  135  cat htpasswd 
  136  htpasswd -c htpasswd usera
  137  oc adm policy add-cluster-role-to-user admin usera
  138  oc login -u usera
  139  oc new-project python
  140  scp root@10.74.250.49:/root/certs.tar ./
  141  ll
  142  ls
  143  mkdir python
  144  mv certs.tar python/
  145  cd python/
  146  ll
  147  tar xf certs.tar 
  148  ll
  149  mv certs/tls/private/client.key ./
  150  mv certs/tls/certs/c* ./
  151  ll
  152  rm client.pk12 
  153  ll
  154  vi /root/.gitconfig
  155  ll
  156  oc secrets new-basicauth gitsecret --username="usera" --password="redhat" --gitconfig=/root/.gitconfig --ca-cert=/root/python/cacert.crt
  157  ll
  158  pwd
  159  cd ..
  160  ll
  161  mv python /root/
  162  cd
  163  ls
  164  ll
  165  oc secrets new-basicauth gitsecret --username="usera" --password="redhat" --gitconfig=/root/.gitconfig --ca-cert=/root/python/cacert.crt
  166  oc get secrets
  167  oc get secrets gitsecret -o yaml
  168  ls
  169  cd python/
  170  ls
  171  ll
  172  vi python-bc.yaml
  173  oc create -f python-bc.yaml 
  174  oc project
  175  vi python-bc.yaml
  176  oc create -f python-bc.yaml 
  177  hostname
  178  oc get bc
  179  oc get pods
  180  oc get bc
  181  oc get is
  182  ll
  183  cat python-bc.yaml 
  184  oc get bc
  185  oc delete bc python-hello 
  186  oc get bc
  187  oc get bc 
  188  oc get pods
  189  oc get bc
  190  oc get bc hell-python
  191  oc get bc hell-python -o yaml
  192  oc get pods
  193  oc get bc hell-python -o yaml
  194  oc get bc hell-python -o yaml > python-bc.yaml
  195  vi python-bc.yaml
  196  oc get pods
  197  oc get dc
  198  oc delete dc hell-python 
  199  oc get svc
  200  oc delete svc hell-python -python
  201  oc delete svc hell-python 
  202  oc get pods
  203  oc get bc
  204  oc delete bc hell-python
  205  oc get secrets
  206  oc get bc
  207  ls
  208  oc create -f python-bc.yaml 
  209  oc get bc
  210  cat python-bc.yaml 
  211  oc get bc
  212  oc delete bc hello-python
  213  oc get pods
  214  oc get secrets
  215  cat python-bc.yaml 
  216  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp
  217  oc get bc
  218  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  219  oc get bc
  220  oc get pods
  221  oc get bc
  222  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret -o yaml > myapp.yaml
  223  oc get bc
  224  oc delete bc ocp
  225  cat myapp.yaml 
  226  ls
  227  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret --context-dir=./
  228  oc get bc
  229  oc get pods
  230  oc get pods -w
  231  oc get pods
  232  oc describe pod ocp-1-m8s72 
  233  oc get svc
  234  curl ocp:8080
  235  curl 172.30.65.153:8080
  236  oc get pods -owide
  237  oc get pods -owide -n default
  238  oc get secret
  239  cat /root/.gitconfig 
  240  cd /root/python/
  241  ls
  242  ll
  243  ls
  244  oc secrets --help
  245  oc secrets new-basicauth --help
  246  cat /root/.gitconfig 
  247  ll
  248  oc get dc
  249  oc delete dc ocp
  250  oc delete svc ocp
  251  oc get bc
  252  oc delete bc ocp
  253  oc secrets new-basicauth gitsecret --username="usera" --password="redhat" --gitconfig=/root/.gitconfig
  254  oc get secret
  255  oc delete secret gitsecret
  256  oc secrets new-basicauth gitsecret --username="usera" --password="redhat" --gitconfig=/root/.gitconfig
  257  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret --context-dir=/root/python
  258  pwd
  259  oc get bc
  260  oc delete secret gitsecret
  261  oc secrets new-basicauth gitsecret --username="usera" --password="redhat" --gitconfig=/root/.gitconfig --ca-cert=/root/python/cacert.crt
  262  oc get secrets
  263  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  264  oc get pods
  265  oc get pods -w
  266  oc get dc
  267  oc delete dc ocp
  268  oc delete svc ocp
  269  oc get pods
  270  oc get bc
  271  oc delete bc ocp
  272  oc get bc
  273  oc get pods
  274  oc get secrets
  275  oc get pods
  276  oc get route
  277  oc delete route ocp
  278  oc delete route hell-python
  279  oc get pods
  280  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  281  oc get pods -w
  282  oc delete dc ocp
  283  oc delete svc ocp
  284  oc delete bc ocp
  285  oc delete secret gitsecret
  286  oc get pods 
  287  oc get pods  -w
  288  oc delete pod -f --grace-period=0 ocp-1-build
  289  oc get pods 
  290  oc delete -f --grace-period=0 pod ocp-1-build
  291  oc delete pod ocp-1-build -f --grace-period=0
  292  oc delete pod ocp-1-build -f
  293  oc delete pod ocp-1-build --force
  294  oc get pods 
  295  oc get secrets
  296  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp
  297  oc get bc
  298  oc get pods
  299  oc get is
  300  oc delete is ocp
  301  oc delete is hell-python
  302  oc delete bc ocp
  303  oc get dc
  304  oc delete dc ocp
  305  oc get pods
  306  oc get bc
  307  oc get is
  308  oc get nodes -owide
  309  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp
  310  oc get pods
  311  oc logs -f bc/ocp
  312  oc get bc
  313  oc delete bc ocp
  314  oc get pods
  315  oc secrets new-basicauth gitsecret --username="usera" --password="redhat" --gitconfig=/root/.gitconfig
  316  oc get secrets
  317  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  318  oc get bc
  319  oc delete bc ocp
  320  oc get dc
  321  oc delete dc ocp
  322  oc get all
  323  oc delete is ocp
  324  oc get all
  325  oc delete svc ocp
  326  oc get pods
  327  oc get all
  328  oc get secrets
  329  oc get secret gitsecret -o yaml
  330  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  331  oc delete secret gitsecret
  332  oc get dc
  333  oc delete dc ocp
  334  oc delete is ocp
  335  oc delete bc ocp
  336  oc secrets new-basicauth gitsecret --username="usera" --password="redhat" --gitconfig=/root/.gitconfig --ca-cert=/root/python/cacert.crt
  337  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  338  oc get pods -w
  339  oc get route
  340  git clone  https://vm250-49.gsslab.pnq2.redhat.com/git/ocp
  341  ll
  342  rm -rf ocp/
  343  mv /root/.gitconfig /root/.gitconfigbkp
  344  git clone  https://vm250-49.gsslab.pnq2.redhat.com/git/ocp
  345  mv /root/.gitconfigbkp /root/.gitconfig
  346  cat /root/.gitconfig 
  347  vi  /root/.gitconfig 
  348  git clone  https://vm250-49.gsslab.pnq2.redhat.com/git/ocp
  349  ll
  350  ll ocp/
  351  rm -rf ocp/
  352  mv /root/.gitconfig /root/.gitconfigbkp
  353  git clone  https://vm250-49.gsslab.pnq2.redhat.com/git/ocp
  354  pwd
  355  mv /root/.gitconfigbkp /root/.gitconfig
  356  git clone  https://vm250-49.gsslab.pnq2.redhat.com/git/ocp
  357  ll
  358  ll ocp/
  359  oc get bc
  360  oc delete all
  361  oc delete all -l app=ocp
  362  oc get bc
  363  oc get all
  364  oc get secrets
  365  oc delete secret gitsecret
  366  oc get all
  367  oc secrets new-basicauth gitsecret --username="usera" --ca-cert=/root/python/cacert.crt
  368  oc get secrets
  369  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  370  oc get pods -w
  371  oc get bc
  372  oc get pods
  373  ~
  374  oc get svc
  375  curl 172.30.176.201:8080
  376  curl -v 172.30.176.201:8080
  377  oc get is
  378  oc get all -owice
  379  oc get all -owide
  380  ll
  381  cat /root/.gitconfig 
  382  docker images 
  383  docker images | grep 172.30.224.21:5000/httpd/new/era/httpd
  384  docker tag 172.30.224.21:5000/httpd/new/era/httpd 172.30.224.21:5000/httpd1/new1/era/httpd/asd/asd/sad/sad/assad:asd
  385  docker tag 172.30.224.21:5000/httpd/new/era/httpd:new  172.30.224.21:5000/httpd1/new1/era/httpd/asd/asd/sad/sad/assad:asd
  386  docker push 172.30.224.21:5000/httpd1/new1/era/httpd/asd/asd/sad/sad/assad:asd
  387  oc rsh docker-registry-2-xd59s 
  388  oc get nodes
  389  oc login -u system:admin
  390  oc get no
  391  ssh vm252-23.gsslab.pnq2.redhat.com
  392  ssh root@vm252-23.gsslab.pnq2.redhat.com
  393  oc project default
  394  oc describe pod docker-registry-2-xd59s 
  395  oc get dc
  396  oc edit dc docker-registry 
  397  oc get bc
  398  oc project test2
  399  oc get bc
  400  oc get project
  401  vi /etc/sysconfig/docker
  402  docker login -u giriraj789 docker.io
  403  docker images
  404  docker tag docker.io/httpd docker.io/httpd/new/era/httpd:new
  405  docker push docker.io/httpd/new/era/httpd:new
  406  oc get svc -n default 
  407  docker tag docker.io/httpd 172.30.224.21:5000/httpd/new/era/httpd:new
  408  docker login -u `oc whoami `  -p  `oc whoami -t` 172.30.224.21:5000
  409  docker push 172.30.224.21:5000/httpd/new/era/httpd:new
  410  docker images 
  411  oc project default 
  412  oc rsh docker-registry-2-xd59s 
  413  hostname
  414  ip addr
  415  Qq
  416  oc get nodes
  417  ssh vm250-103.gsslab.pnq2.redhat.com
  418  oc project
  419  oc project test2
  420  oc get pods
  421  oc get projects
  422  oc project test4
  423  oc get pods
  424  oc get dc
  425  oc edit dc ruby
  426  oc get bc
  427  oc edit bc ruby-ex 
  428  oc edit dc ruby-ex
  429  oc get pods
  430  oc describe pod ruby-1-dphr6 
  431  oc project default
  432  oc describe pod docker-registry-2-xd59s 
  433  openssl x509 -in /etc/origin/master/registry.crt -text
  434  oc get roles
  435  oc whoami
  436  oc get role
  437  oc get rolebinding
  438  oc get role -n openshift
  439  oc get clusterrole
  440  oc get clusterrole -o yaml admin
  441  oc get clusterrole -o yaml admin > custom.yaml
  442  vi custom.yaml 
  443  oc create -f custom.yaml 
  444  oc get clusterrole | cu
  445  oc get clusterrole | grep cu
  446  oc get cusn -o yaml admin > custom.yaml
  447  oc get clusterrole -o yaml cusn
  448  oc get clusterrole -o yaml cusn | grep rsh
  449  oc get clusterrole -o yaml cusn | grep exec
  450  oc get clusterrole -o yaml cusn | grep rsh
  451  oc get cusn -o yaml admin | grep rsh
  452  oc get clusterrole -o yaml cusn | grep rsh
  453  oc get clusterrole -o yaml admin | grep rsh
  454  oc get clusterrole -o yaml view | grep rsh
  455  oc get clusterrole -o yaml | grep rsh
  456  oc get po
  457  oc rsh docker-registry-2-xd59s
  458  oc login -u test
  459  oc login -u test -p test
  460  vi custom.yaml 
  461  oc get clusterrole -o yaml view
  462  oc get clusterrole admin -o yaml view
  463  oc get clusterrole admin -o yaml 
  464  oc export clusterrole admin -o yaml > cust
  465  cat cust
  466  oc export clusterrole admin -o yaml 
  467  oc export clusterrole admin -o yaml | grep rsh
  468  oc export clusterrole admin -o yaml > cust
  469  vi cust
  470  oc create -f cust
  471  htpasswd /etc/origin/master/htpasswd rsh
  472  oc adm policy add-role-to-user admin-noex rsh
  473  oc login -u rsh -p rsh
  474  oc get po
  475  oc rsh docker-registry-2-xd59s
  476  oc export clusterrole admin -o yaml 
  477  oc export clusterrole admin -o yaml | grep pods/exec
  478  ll
  479  ls
  480  l
  481  ll
  482  cd python/
  483  ll
  484  ll certs
  485  mkdir gitcerts
  486  mv client.* gitcerts/
  487  oc login -u sunilc
  488  oc login -u usera
  489  oc projects
  490  oc project python
  491  oc get secrets
  492  ls
  493  ll
  494  ll gitcerts/
  495  oc secrets new client-secret ./gitcerts/
  496  oc get secrets
  497  oc get secrets client-secrets -o yaml
  498  oc get secrets client-secret -o yaml
  499  oc delete all -l python
  500  oc delete all --help
  501  oc delete all -l app=ocp
  502  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --help
  503  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret --source-secret=client-secret
  504  oc get bc
  505  oc get pods
  506  hostname
  507  oc get pods
  508  oc logs ocp-1-build
  509  oc describe pod ocp-1-build
  510  oc delete all -l app=ocp
  511  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  512  oc get pods
  513  oc describe pod ocp-1-build 
  514  oc get pods
  515  oc get is
  516  oc get project
  517  oc project jenkins
  518  oc get is
  519  oc get po
  520  oc logs jenkins-1-v5vnb
  521  oc get pvc -f
  522  oc logs jenkins-1-v5vnb -f
  523  oc get is
  524  oc project
  525  oc get is
  526  oc get is -n openshift
  527  less /etc/hosts
  528  oc get nodes
  529  oc login -u system:admin
  530  oc get nodes
  531  oc project
  532  oc get pods
  533  curl -vk $RegistryAddr/healthz
  534  RegistryAddr=$(oc get svc docker-registry -n default -o 'jsonpath={.spec.clusterIP}:{.spec.ports[0].port}')
  535  curl -vk $RegistryAddr/healthz
  536  vi handshake.go
  537  yum install -y go
  538  subscription-manager repos --enable=rhel-7-server-devtools-rpms 
  539  yum install -y  go-toolset-7
  540  go run handshake.go 
  541  yum install -y go-toolset-7-golang-bin
  542  man gomtree
  543  yum install -y golang
  544  subscription-manager  repos --enable=rhel-7-server-optional-htb-rpms
  545  yum install -y golang
  546  go run handshake.go 
  547  go run handshake.go | grep true
  548  TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
  549  vi handshake.go 
  550  vi handshake1.go
  551  diff handshake.go handshake1.go 
  552  vi handshake.go 
  553  ls
  554  cd commit1/
  555  ls
  556  git describe 
  557  git describe master 
  558  git describe origin/master 
  559  git show
  560  ls
  561  vi s2i-test-commit1-bc.yaml 
  562  oc get templates -n openshift
  563  #oc get templates -n openshift | grep 
  564  vi s2i-test-commit1-bc.yaml 
  565  oc get is -n openshift | grep nodejs-8-rhel7
  566  oc get is -n openshift | grep nodejs-
  567  oc get is -n openshift | grep nodejs
  568  vi s2i-test-commit1-bc.yaml 
  569  vi s2i-test-commit1-is.yaml 
  570  git push *
  571  git push origin master
  572  docker login -u suhaas007 github.io
  573  git push origin master
  574  ls
  575  git show
  576  cd ..
  577  git show
  578  cd commit1/
  579  git show
  580  ls
  581  vi s2i-test-commit1-is.yaml 
  582  ls
  583  git show
  584   vi s2i-test-commit1-bc.yaml 
  585  vi ../commit2/s2i-test-commit2-bc.yaml 
  586   vi s2i-test-commit1-bc.yaml 
  587  ls
  588  vi s2i-test-commit1-is.yaml 
  589  git push
  590  cd ..
  591  mkdir git
  592  cd git/
  593  mkdir commit0
  594  mkdir commit3
  595  cp ../commit1/* .
  596  ls
  597  cp ../commit1/* commit0/
  598  cp ../commit2/* commit3/
  599  cd commit0/
  600  ls
  601  git init
  602  ls
  603  git add *
  604  ls
  605  git commit -m "first commit"
  606  git remote add origin https://github.com/Suhaas007/repo1.git
  607  git push -u origin master
  608  oc set env GIT_SSL_NO_VERIFY=true
  609  oc set env GIT_SSL_NO_VERIFY true
  610  git config --global http.sslVerify false
  611  git push -u origin master
  612  ls
  613  cd ../commit3/
  614  ls
  615  git init
  616  git add *
  617  git commit -m "second commit"
  618  git remote add origin https://github.com/Suhaas007/repo2.git
  619  git push -u origin master
  620  cd ../commit0/
  621  ls
  622  vi s2i-test-commit1-bc.yaml 
  623  vi ../commit3/s2i-test-commit2-bc.yaml 
  624  git push -m "changing git url"
  625  git push -u origin master
  626  git add *
  627  git push -u origin master
  628  git push 
  629  vi s2i-test-commit1-bc.yaml 
  630  git commit 
  631  git push
  632  cd ../commit3/
  633  ls
  634  vi s2i-test-commit2-bc.yaml 
  635  git commit 
  636  git commit git push
  637  git push
  638  git commit
  639  git add *
  640  git commit
  641  git push
  642  cd ../commit0/
  643  vi s2i-test-commit1-bc.yaml 
  644  oc get is -n openshift | grep nodejs
  645  vi s2i-test-commit1-is.yaml 
  646  oc get pods -o wide -n default
  647  vi s2i-test-commit1-is.yaml 
  648  cd ../
  649  ls
  650  cd ../
  651  ls
  652  cd commit1/
  653  ls
  654  cd ../commit2/
  655  ls
  656  vi s2i-test-commit2-is.yaml 
  657  cd ../git/commit0/
  658  ls
  659  vi s2i-test-commit1-is.yaml 
  660  oc get sa
  661  oc describe sa jenkins 
  662  oc get dc
  663  passwd
  664  vi /etc/sysconfig/docker
  665  oc get nodes
  666  oc get po
  667  oc get po -n default
  668  oc rsh po docker-registry-2-xd59s -n default
  669  oc rsh docker-registry-2-xd59s -n default
  670  oc project default
  671  oc rsh docker-registry-2-xd59s
  672  oc get dc
  673  oc edit dc docker-registry
  674  oc project
  675  oc edit dc docker-registry -n default
  676  oc login -u usera
  677  oc project python
  678  oc delete all -l app=ocp
  679  oc get pods
  680  oc get secrets
  681  oc delete secret client-secret
  682  oc delete secret gitsecret
  683  ll
  684  cd python/
  685  ll
  686  mv cacert.crt certs/
  687  cd certs/
  688  ll
  689  mv cacert.crt ../
  690  cd ..
  691  ll
  692  ll gitcerts/
  693  mv cacert.crt gitcerts/
  694  ll
  695  cd gitcerts/
  696  ll
  697  mv  * ../
  698  cd ..
  699  rmdir gitcerts/
  700  ll
  701  cp /root/.gitconfig ./
  702  ll
  703  vi .gitconfig 
  704  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=sslCert=/root/python/client.crt --from-file=sslKey=/root/python/client.key --from-file=sslCaInfo=/root/python/cacert.crt 
  705  oc get secret gitsecret
  706  oc get secret gitsecret -o yaml
  707  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  708  hostname
  709  oc get pods
  710  oc describe pod ocp-1-build
  711  oc get pods
  712  oc rsh ocp-1-build 
  713  oc delete all -l app=ocp
  714  oc delete secret gitsecret
  715  cat .gitconfig 
  716  oc secrets new-basicauth gitsecret --gitconfig=/root/python/.gitconfig --ca-cert=/root/python/cacert.crt 
  717  oc secrets new-basicauth gitsecret --username=usera --password=redhat --gitconfig=/root/python/.gitconfig --ca-cert=/root/python/cacert.crt 
  718  oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  719  oc get pods
  720  oc rsh ocp-1-build 
  721  oc exec -ti ocp-1-build sh
  722  oc describe pod ocp-1-build 
  723  ~
  724  oc describe pod ocp-1-build 
  725  oc describe pod ocp-1-build > desc-pod-build
  726  oc get pods ocp-1-build -o yaml > desc-pod-build-yaml
  727  ll
  728  cd
  729  git clone  https://vm250-49.gsslab.pnq2.redhat.com/git/ocp
  730  ll
  731  cat .gitconfig 
  732  vi .gitconfig 
  733  ll
  734  rm -rf ocp
  735  vi .gitconfig 
  736  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  737  cp /root/.gitconfig /root/.gitconfig.bkp
  738  rm /root/.gitconfig
  739  rm -rf ocp
  740  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  741  cp /root/.gitconfig.bkp /root/.gitconfig
  742  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  743  cd python/
  744  ll
  745  oc get secrets
  746  oc delete secret gitsecret
  747  oc delete all -l app=ocp
  748  oc get secrets
  749  oc secrets new-basicauth gitsecret --username="usera" --password="redhat" --gitconfig=/root/python/.gitconfig --ca-cert=/root/python/cacert.crt 
  750   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  751  oc get bc
  752  hostname
  753  oc get pods
  754  oc project python
  755  oc project default
  756  oc delete all -l app=ocp
  757  oc get secrets
  758  oc delete secret gitsecret
  759  oc project python
  760  oc get all
  761  oc get secret
  762  oc secrets new-basicauth gitsecret --username="usera" --password="redhat" --gitconfig=/root/python/.gitconfig --ca-cert=/root/python/cacert.crt 
  763   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  764  oc get pods
  765  oc delete all -l app=ocp
  766  cat .gitconfig 
  767  vi .gitconfig 
  768  oc delete secret gitsecret
  769  oc secrets new-basicauth gitsecret --username="usera" --password="redhat" --gitconfig=/root/python/.gitconfig --ca-cert=/root/python/cacert.crt 
  770   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  771  oc get pods -owice -w
  772  oc get pods -owide -w
  773  oc get pods
  774  oc delete secret gitsecret
  775  oc get pods
  776  oc rsh ocp-1-llbt2 
  777  oc delete all -l app=ocp
  778  pwd
  779  ll
  780  cp .gitconfig .gitconfigbkp
  781  vi .gitconfig
  782  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=sslCaInfo=/root/python/cacert.crt 
  783   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  784  cat .gitconfig
  785  oc get secrets
  786  oc get secret gitsecret
  787  oc get secret gitsecret -o yaml
  788  vi .gitconfig
  789  oc get secrets
  790  oc delete secret gitsecret
  791  oc tet pods
  792  oc get pods
  793  oc delete all -l app=ocp
  794  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=sslCAInfo=/root/python/cacert.crt 
  795   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  796  git config --list
  797  cp .gitconfig /root/
  798  git config --list
  799  vi .gitconfig
  800  ll
  801  oc get secrets
  802  oc delete secret gitsecret
  803  oc delete all -l app=ocp
  804  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=sslCAInfo=/root/python/cacert.crt 
  805  oc get secret gitsecret
  806  oc get secret gitsecret -o yaml
  807  cat .gitconfig
  808   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  809  oc get bc
  810  oc get secrets
  811  oc delete secrets gitsecrets
  812  oc delete secrets gitsecret
  813  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=sslCAInfo=/root/python/cacert.crt 
  814   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  815  oc project
  816  oc get secrets
  817  cat .gitconfig
  818  ll
  819  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=sslCAInfo=/root/python/cacert.crt 
  820  oc delete secret gitsecret
  821  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=sslCAInfo=/root/python/cacert.crt 
  822  oc delete all -l app=ocp
  823  oc get secrets
  824  oc delete secret gitsecret
  825  vi .gitconfig
  826  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=sslCAInfo=/root/python/cacert.crt 
  827   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  828  oc delete all -l app=ocp
  829  oc delete secret gitsecret
  830  vi .gitconfig
  831  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=sslCAInfo=/root/python/cacert.crt 
  832   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  833  cd
  834  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  835  rm -rf ocp
  836  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  837  cat  /root/.gitconfig
  838  vi /root/.gitconfig
  839  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  840  vi /root/.gitconfig
  841  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  842  vi /root/.gitconfig
  843  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  844  vi /root/.gitconfig
  845  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  846  cd 
  847  ll
  848  cat .gitconfig
  849  rm -rf ocp
  850  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  851  cd python/
  852  ll
  853  vi .gitconfig
  854  git config --list
  855  ll
  856  oc get secrets
  857  oc delete secret gitsecret
  858  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=sslCAInfo=/root/python/cacert.crt 
  859   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  860  cat .gitconfig
  861  oc delete all -l app=ocp
  862  oc delete secret gitsecret
  863  ll
  864  oc get secrets
  865  vi .gitconfig
  866  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=sslCAInfo=/root/python/cacert.crt 
  867   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  868  oc get pods -owide -w
  869  cat .gitconfig
  870  oc get secret gitsecret
  871  oc get secret gitsecret -o yaml
  872  ll
  873  vi .gitconfig
  874  oc delete all -l app=ocp
  875  oc delete secret gitsecret
  876  vi .gitconfig
  877  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=cacert.crt=/root/python/cacert.crt --from-file=client.crt=/root/python/client.crt --from-file=client.key=/root/python/client.key
  878  oc get secret gitsecret -o yaml
  879  cat .gitconfig
  880   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  881  cat .gitconfig
  882  oc get secret gitsecret -o yaml
  883  cat .gitconfig
  884  oc describe pod ocp-1-build 
  885  oc get pods -owide -w
  886  cat .gitconfig
  887  oc delete all -l app=ocp
  888  oc login -u usera
  889  oc delete all -l app=ocp
  890  oc delete secret gitsecret
  891  oc create secret generic gitsecret --username="usera" --password="redhat" --from-file=.gitconfig=/root/python/.gitconfig --from-file=cacert.crt=/root/python/cacert.crt --from-file=client.crt=/root/python/client.crt --from-file=client.key=/root/python/client.key
  892  oc create secret generic gitsecret --username="usera" --password="redhat" --from-file=.gitconfig=/root/python/.gitconfig --from-file=cacert.crt=/root/python/cacert.crt --from-file=client.crt=/root/python/client.crt --from-file=client.key=/root/python/client.key --dry-run
  893  oc create secret generic gitsecret --from-literal=username=usera --from-literal=password=redhat --from-file=.gitconfig=/root/python/.gitconfig --from-file=cacert.crt=/root/python/cacert.crt --from-file=client.crt=/root/python/client.crt --from-file=client.key=/root/python/client.key --dry-run
  894  oc create secret generic gitsecret --from-literal=username=usera --from-literal=password=redhat --from-file=.gitconfig=/root/python/.gitconfig --from-file=cacert.crt=/root/python/cacert.crt --from-file=client.crt=/root/python/client.crt --from-file=client.key=/root/python/client.key
  895  oc get secret gitsecret
  896  oc get secret gitsecret -o yaml
  897   oc new-app https://vm250-49.gsslab.pnq2.redhat.com/git/ocp --source-secret=gitsecret
  898  git config --list
  899  git config credential.helper cache
  900  cd
  901  git config credential.helper cache
  902  cat .gitconfig
  903  mkdir /root/.git
  904  cp /root/.gitconfig /root/.git/
  905  cd /root/.git/
  906  ll
  907  ls
  908  mv .gitconfig config
  909  ll
  910  cat config 
  911  git config --list
  912  git config --global credential.helper cache
  913  git config --list
  914  cat config 
  915  ls -al
  916  oc whoami
  917  pwd
  918  cd /root/python/
  919  cat .gitconfig
  920  vi  .gitconfig
  921  git config --list
  922  vi /root/.gitconfig
  923  git config --list
  924  vi /root/.gitconfig
  925  git config credential.helper store
  926  git config credential.helper 'store'
  927  cd /root/.git/
  928  ll
  929  cat config 
  930  git config credential.helper
  931  git config credential.helper store
  932  ll
  933  cd
  934  git config credential.helper store
  935  git config --list
  936  rm /root/.gitconfig
  937  git config --list
  938  cat .git/config 
  939  git config credential.helper store
  940  git config credential.helper store --file=/root/.git/cred
  941  git config --list
  942  ls -al /root/.git
  943  cd
  944  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  945  rm -rf ocp
  946  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  947  cp .gitconfig.bkp .gitconfig
  948  cat .gitconfig
  949  mv .gitconfig .gitconfigbkp
  950  cat .git/config 
  951  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  952  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp --config=/root/.git/config
  953  mv .gitconfig.bkp .gitconfig
  954  git clone  https://usera@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  955  cd ocp/
  956  ll
  957  touch hello.md
  958  git add .
  959  git commit
  960  git commit -m hello
  961  git push
  962  ll
  963  cd
  964  cat .gitconfig
  965  cd .git/
  966  ls
  967  ll
  968  ll -al
  969  cd ..
  970  ll
  971  cd
  972  git config credential.helper store
  973  git config credential.helper store --add
  974  ls -al -R /root/
  975  ls -al -R /root/ | grep -i credential
  976  ls -al -R /root/ | grep -i credential | less
  977  ls -al -R /root/ | less
  978  oc create secret generic --help
  979  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=cacert.crt=/root/python/cacert.crt --from-file=client.crt=/root/python/client.crt --from-file=client.key=/root/python/client.key
  980  vi cred.env
  981  git config -l
  982  cd
  983  oc create secret generic gitsecret --from-file=.gitconfig=/root/python/.gitconfig --from-file=cacert.crt=/root/python/cacert.crt --from-file=client.crt=/root/python/client.crt --from-file=client.key=/root/python/client.key
  984  git config remote.origin.url  https://usera:redhat@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  985  git config -l
  986  git push
  987  cd
  988  cd ocp/
  989  git push
  990  git config remote.origin.url  https://usera:redhat@vm250-49.gsslab.pnq2.redhat.com/git/ocp
  991  git push
  992  ll
  993  cat >> hello.md 
  994  git add .
  995  git commit -m new
  996  git push
  997  cd
  998  cat .gitconfig
  999  cat .git/config 
 1000  oc get nodes
 1001  oc login -u system:admin
 1002  oc get nodes
 1003  #curl -X "POST" -d '{"containerName":"/","subcontainers":true,"num_stats":1}' localhost:8001/api/v1/proxy/nodes/:10250/stats/container
 1004  oc get nodes
 1005  ssh vm250-103.gsslab.pnq2.redhat.com
 1006  oc project
 1007  oc project test4
 1008  oc get pods
 1009  oc get pods -o wide
 1010  #curl -X "POST" -d '{"ruby-1-dphr6":"/","subcontainers":true,"num_stats":1}' localhost:8001/api/v1/proxy/nodes/vm253-114.gsslab.pnq2.redhat.com:10250/stats/container
 1011  curl -X "POST" -d '{"ruby-1-dphr6":"/","subcontainers":true,"num_stats":1}' localhost:8001/api/v1/proxy/nodes/vm253-114.gsslab.pnq2.redhat.com:10250/stats/container
 1012  curl -X "POST" -d '{"ruby-1-dphr6":"/","subcontainers":true,"num_stats":1}' localhost:8001/api/v1/nodes/vm253-114.gsslab.pnq2.redhat.com:10250/stats/container
 1013  docker ps
 1014  docker ps | grep ruby-1-dphr6
 1015  docker inspect k8s_POD_ruby-1-dphr6_test4_4c223565-20da-11e8-b13d-001a4a00072c_0
 1016  curl -X "POST" -d '{"containerName":"/","subcontainers":true,"num_stats":1}' localhost:8001/api/v1/proxy/nodes/vm253-114.gsslab.pnq2.redhat.com:10250/stats/container
 1017  curl -X "POST" -d '{"containerName":"/","subcontainers":false,"num_stats":1}' localhost:8001/api/v1/proxy/nodes/vm253-114.gsslab.pnq2.redhat.com:10250/stats/container
 1018  dig localhost:8001
 1019  ping localhost:8001
 1020  curl -X "POST" -d '{"containerName":"/","subcontainers":false,"num_stats":1}' localhost:8001/api/v1/nodes/vm253-114.gsslab.pnq2.redhat.com:10250/stats/container
 1021  oc proxy & curl -X "POST" -d '{"containerName":"/","subcontainers":false,"num_stats":1}' localhost:8001/api/v1/proxy/nodes/vm253-114.gsslab.pnq2.redhat.com:10250/stats/container
 1022  curl -X "POST" -d '{"containerName":"/","subcontainers":false,"num_stats":1}' localhost:8001/api/v1/nodes/vm253-114.gsslab.pnq2.redhat.com:10250/stats/container
 1023  oc get nodes
 1024  ls
 1025  cd commit1/
 1026  ls
 1027  git show
 1028  ls
 1029  cd ..
 1030  ls
 1031  cd git
 1032  ls
 1033  cd commit0/
 1034  ls
 1035  git show
 1036  vi s2i-test-commit1-is.yaml 
 1037  git add *
 1038  git commit 
 1039  git push
 1040  history
 1041  history | less
