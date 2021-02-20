INSERT INTO tb_user (name,  email, password) VALUES ('Alex',  'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name,  email, password) VALUES ('Bob',  'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name,  email, password) VALUES ('Maria',  'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

insert into tb_course (name,img_uri,img_gray_uri)values('BootCamp HTML','https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg','https://static.thenounproject.com/png/2366974-200.png');

insert into tb_offer(edition,start_moment,end_moment,course_id)values('1.0',TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07.12345Z',TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z',1);
insert into tb_offer(edition,start_moment,end_moment,course_id)values('2.0',TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z',TIMESTAMP WITH TIME ZONE '2022-07-13T20:50:07.12345Z',1);

insert into tb_notification(text,moment,read,route,user_id)values('Parabéns pelo estudo',TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z',false,'',1);




