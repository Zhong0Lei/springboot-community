# 工程简介
本项目是一个论坛系统，主要完成了登录、注册、发帖、评论、点赞等功能，并集成了chatGPT API实现AI对话和AI画图功能。

主要技术：SpringBoot、SpringMVC、Mybatis、Thymeleaf、MySQL、Shiro、Layui

项目开发环境：
JDK1.8、 IDEA 2020.3、 Mysql 8.0、 gpt-3.5-turbo

启动方法：

1.在mysql中运行resource路径下的zl.sql文件,添加数据库及数据。

2.修改application.properties中的spring.datasource.url

3.修改application.properties中的chatgpt.token为自己的API-key

4.若仅本地部署，则需要添加chatgpt代理，在application.properties中设置

5.右键pom.xml reimport 导入依赖

6.运行CommunityApplication来运行项目
