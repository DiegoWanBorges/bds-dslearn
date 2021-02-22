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

INSERT INTO TB_RESOURCE(TITLE,DESCRIPTION,POSITION,IMG_URI,TYPE,offer_id)VALUES('Trilha Html', 'Trilha principal do curso',1,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg',1,1);
INSERT INTO TB_RESOURCE(TITLE,DESCRIPTION,POSITION,IMG_URI,TYPE,offer_id)VALUES('Forum', 'Tire suas duvidas',2,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg',2,1);
INSERT INTO TB_RESOURCE(TITLE,DESCRIPTION,POSITION,IMG_URI,TYPE,offer_id)VALUES('Lives', 'Lives exclusvas',3,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg',0,1);

insert into tb_section(TITLE,DESCRIPTION,POSITION,IMG_URI,resource_id,prerequisite_id)values('Capitulo 1','Nesse capitulo vamos iniciar a trilha',1,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg',1,null);
insert into tb_section(TITLE,DESCRIPTION,POSITION,IMG_URI,resource_id,prerequisite_id)values('Capitulo 2','Tags',2,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg',1,1);
insert into tb_section(TITLE,DESCRIPTION,POSITION,IMG_URI,resource_id,prerequisite_id)values('Capitulo 3','Divs',3,'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg',1,2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=sqbqoR-lMf8'); 

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, '', 'https://www.youtube.com/watch?v=sqbqoR-lMf8'); 

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '', 'https://www.youtube.com/watch?v=sqbqoR-lMf8'); 

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

