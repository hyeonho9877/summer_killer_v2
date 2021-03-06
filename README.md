# summer_killer_v2 - 지능웹설계

환경 설정 관련하여 문의 사항이 있으시면 메일로 연락주시기 바랍니다.

## 실행환경

+ 운영체제 : 윈도우 10 Education 64bit
+ IDE : IntelliJ IDEA 2021.02 Ultimate
+ DB : MariaDB 10.5.13-GA
+ apache tomcat : 9.0.54
+ 브라우저 : 크롬
+ JDK : 13
+ 포트 : 8120

## Requirements
1. IntelliJ IDEA 2021.02 Ultimate (체험판 다운로드 가능, 상위 버전 가능)
>https://www.jetbrains.com/ko-kr/idea/download/#section=windows
2. MariaDB 10.5.13-GA
>https://mariadb.com/downloads/


## 프로젝트 실행 방법

1. IntelliJ Ultimate Edition 체험판 설치 (https://www.jetbrains.com/ko-kr/idea/download/#section=windows)

   <img width="80%%" src="https://user-images.githubusercontent.com/47271188/143534868-3261bdf0-3220-4c33-aba5-6d455bc65bb7.png"/>


2. IntelliJ 실행 후 Get from VCS 선택

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143536264-c1d24a1e-61c6-4d05-a67c-9c728891d59d.png"/>

3. 레포지토리 URL 복사 후 URL에 입력한 후 Clone 클릭

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143536459-2b2c23c1-e006-4ea5-aa68-6dfc1eb69b66.png"/>

4. File → Project Structure 클릭 후, Project SDK 확인, 13이 아니라면 드롭다운 바를 클릭후 Download JDK 선택

    <img width="80%" src="https://user-images.githubusercontent.com/47271188/143536927-3e3e8940-a9e3-4cbe-8acd-e6b07e35da8e.png"/>

5. JDK 13 선택후 Download

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143537265-c3c819af-65a4-4590-9957-c966125d208c.png"/>

6. Libraries 탭에 tomcat-lib가 프로젝트 내의 project-apache-tomcat/apache-tomcat-9.0.54/lib인지 확인

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143545045-825a5b89-ff08-4803-b83f-efba1d0c8fc4.png"/>

7. 위의 4가지 라이브러리 또한 클론한 경로 내에서 유효한지 확인

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143545304-60b26155-1f7c-4b65-a2c3-5bd94bbcbcc4.png"/>

8. 우측 상단의 Edit Configuration 클릭

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143545416-57bf7f68-0bb9-466f-ad24-c7000380cce2.png"/>

9. Configure 클릭

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143546066-8ed78c4c-faed-404f-9487-e547ba718199.png"/>

10. Tomcat Home이 클론 경로 내의 tomcat으로 설정되어 있는지 확인

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143546044-290d8835-f8d4-41ce-a06e-837b2972edd5.png"/>
   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143546048-fdea59d1-f9f9-45a0-a9e3-012bb67bb069.png"/>

11. 마찬가지로 하단의 Libraries 경로 확인하고 창 닫기

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143546052-5b6c81f0-fab0-49de-a9d8-0f7940968977.png"/>

12. Deployment 탭 이동 후, upload 경로 확인, 빨간줄이 뜨면 클릭후 상단의 - 를 이용해 제거 후 +로 추가

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143546055-ccb24d83-4c2a-48bc-913d-ac1b62244f65.png"/>
   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143546058-6bcf7839-7d4f-4ef4-a701-7ea79744c593.png"/>

13. summer_killer_v2:war exploded의 Application Context가 / 로 설정되어있는지 확인
   
   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143546061-4c804b49-8a38-45cf-b3f1-cb64bb40e5bc.png"/>

14. View → Tool Windows → Database 선택

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143548245-087be325-f5fe-4860-95df-0f988657afd5.png"/>

15. Database 창에서 해당 아이콘 클릭 후 MariaDB 데이터 소스 추가

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143548330-3ca4d2b5-2a23-473c-bd24-7fa5a1a9750a.png"/>
   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143548453-b5a8402a-d0f8-4f18-951b-f91a3d4e018f.png">

16. MariaDB Username과 Password 입력, 빨간 영역에 뜨는 Download 클릭 후 드라이버 다운로드

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143548663-8a0aa3c4-46b8-4b8a-b2e8-b7af0bc85296.png">

17. Test Connection이 정상적으로 이루어지면 연결 성공


18. 좌측 탭의 프로젝트 탐색기에서 web/resources/sql 에 존재하는 tableCreation.sql 실행 (Ctrl + Enter)

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143549292-a13fa306-e574-49b6-8a3c-a7c517009504.png">


19. 마찬가지로 각 Insert.sql 실행

20. dbConn.jsp 파일에 해당 부분을 자신의 Username과 Password로 변경

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143549882-58905b24-b72d-49dc-9c95-e0f3d7c39446.png">

21. processAddItem.jsp에서 firstPath 변수를 자신의 경로에 맞게 수정

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143600526-ffdb3793-9843-47d2-b813-e6c4c5aea9bf.png">

22. 우측 상단의 Run을 통해 Tomcat 서버 실행

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143549552-9069b7e2-babe-420e-8726-7f7d6bc63209.png">

22. 완료

   <img width="80%" src="https://user-images.githubusercontent.com/47271188/143550023-af14de2b-825e-4be2-8e5f-ae48756f24b5.png">


