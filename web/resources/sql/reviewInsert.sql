insert into review (writer, product, title, text) VALUES ('hyeonho9877@gmail.com',13,'와 존맛탱구리 ㅋㅋ','가격도 싸고 배송도 개빨라요 맛도 빠삐코랑 똑같아서 개맛잇음 ㄹㅇㅋㅋ');
insert into review (writer, product, title, text) VALUES ('udangyi@gmail.com',13,'애휴ㅡ,,개존노맛..','걍 개존노맛임 ㅇㅇ..이게 석박사들이 머리를 맞대고 만든 결과물이라는게 놀라움');

alter table purchase add p_date date;

select * from purchase where username='hyeonho9877@gmail.com' order by p_date desc;
alter table review modify text varchar(200);