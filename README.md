# Shopping-mall
服装商城(ssm+dubbo)
首先启动Zookeeper注册中心，
而后由Spring-provider项目通过线程阻塞的方式使bean容器开启、service暴露在不同端口，模拟dubbo结构中服务提供端。
最后启动部署在tomcat的Spring-consumer项目，它在web.xml中配置中央控制器加载bean容器与服务消费端配置文件，模拟本机伪集群分布式RPC的方式使各controller引用各对应service(在另一个tomcat启动dubbo-admin管理引用关系)。
 Shopping-mall
这是一个关于服装商城的项目
 [demo](https://cjljava.github.io/Shopping-mall/
