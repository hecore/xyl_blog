# xyl_blog
1.本项目为毕设作品，需要oracle库支撑。本毕设采用oracle12C
2.项目中原型文档
        sql文件
        为后续加载
        如项目部署中发生异常
        可能是Oracle未设置序列和触发器导致。针对异常添加即可。
             创建方式如下：
        create sequence scott.emp minvalue 1 maxvalue 
        999999999999 start with max(ID)+1 increment by 1 cache 20;
              触发器可以用Navicat来指定
              亦可
        触发器：create or replace trigger "tyxyl"."trigger_user" //触发器：u_001为用户 . 你创建的触发器的名字
           before insert on "tyxyl"."U_USER"   //在那个用户下面u_001的那个表上创建
        for each row
           begin
           select seq_user.nextval into :new.id from dual;     //select  后面是 用户.刚刚创建的序列的 名字.nextval into :new . 这是你需要自增长的列名
        end "trigger_user";
