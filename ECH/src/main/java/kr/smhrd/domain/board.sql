	private int idx; // 번호
	private String title; // 제목
	private String contents; // 내용
	private String writer; // 작성자
	private String indate; // 작성일
	private int count; // 조회수
----------------------------------------------
    private int comment;
-- Board(Object)=board(table) : ORM(Spring JPA)

create table python_board(
	idx int not null auto_increment, -- auto_increment(자동증가)
	userId varchar(20) not null,
	title varchar(1000) not null,
	contents varchar(2000) not null,
	writer varchar(100) not null,
	indate datetime default now(), -- now() 날짜,시간함수
	count int default 0,
	comment int default 0,
	primary key(idx)	
);    
    



create table pop_user(
	userId varchar(20) not null,
	userPwd varchar(30) not null,
	userName varchar(50) not null,	
	primary key(userId)
);

create table sentence(
	idx int not null auto_increment,
	title varchar(100) not null,
	contents varchar(2000) not null,
	primary key(idx)
);

create table gsentence(
	idx int not null auto_increment,	
	contents varchar(2000) not null,
	primary key(idx)
);





drop table board;
drop table pop_user;
drop table python_board;
drop table gsentence;

insert into sentence(title, contents)
values('java','클래스는 Java의 가장 작은 단위이며 상태와 행동을 가지고 있다. 클래스 안에 변수를 선언하면 이를 상태라 하고 메소드를 선언하면 행동이라고 볼 수 있다.​');

insert into gsentence(contents)
values('가끔은 밤하늘 저 희미한 별보다 옆에 잠든 당신이 더 멀었다');

insert into gsentence(contents)
values('사랑하지 않고 스쳐지나 갈 수도 있었는데 사랑일지도 모른다고 걸음을 멈춰준 그 사람이 정녕 고맙다고 나는 이제 너 없이도 너를 좋아할 수 있다');
insert into gsentence(contents)
values('될 것 같다고 말해주는 누군가가 있다면, 그 힘으로 인생이 굴러가기도 한다.');
insert into gsentence(contents)
values('그리고 그 누군가가 나일 때, 가장 힘이 세다.');
insert into gsentence(contents)
values('가끔 네 꿈을 꾼다. 전에는 꿈이라도 꿈인 줄 모르겠더니 이제는 너를 보면 아, 꿈이로구나, 알아챈다.');
insert into gsentence(contents)
values('슬프다 내가 사랑했던 자리마다 모두 폐허다 ');
insert into gsentence(contents)
values('잠시 훔쳐온 불꽃이었지만 그 온기를 쬐고 있는 동안만은 세상 시름, 두려움도 잊고 따뜻했었다');
insert into gsentence(contents)
values('고맙다 네가 내게 해준 모든 것에 대해 주지 않은 것들에 대해서도');
insert into gsentence(contents)
values('날 때부터 이쁜 마음을 몸에 두른 그대는 행복하여라');
insert into gsentence(contents)
values('너는 너대로 빛나면된다');
insert into gsentence(contents)
values('8월은 사랑에 빠진 게 틀림없다  사랑하지 않고서  이리 뜨거울 수가 없다');
insert into gsentence(contents)
values('사랑이라고 쓰자, 그 뒤를 계속 쓸 수가 없게 되었다.');
insert into gsentence(contents)
values('인생이 추울때 너를 만나 나를 꽃으로 대해준 네가 고맙다');
insert into gsentence(contents)
values('낭만 실조에 걸린 것 같았다 날 보고, 네가 웃었다 포만감에 숨 쉬지 못했다');
insert into gsentence(contents)
values('너는 아니라고 말하고 싶겠지만 생각해봐');
insert into gsentence(contents)
values('우리가 사는게 사막이고 내가 물 한 컵이었다면 네가 나를 버렸을 것 같아?');
insert into gsentence(contents)
values('그는 내 몫의 사람이 아니다. 이제 다시 그로 하여 마음아프지 말자. 그에게 전화가 오더라도 이제는 그를 기다리지 않는다고 말하자. ');
insert into gsentence(contents)
values('내가 그를 미워하고 있을 때 나는 아직도 그를 사랑하고 있는 것이다.');
insert into gsentence(contents)
values('걸어서 천년이 걸리는 길을 빗물에 쓸려가는 게 사랑이지');
insert into gsentence(contents)
values('오늘은 웬일인지 네 생각이 나지않았다며 우습게도 네 생각을 했다..');




insert into sentence(title, contents)
values('learning','머신러닝 : 인공지능의 한분야. 컴퓨터가 데이터를 이용해 학습하는 알고리즘 기술');
insert into sentence(title, contents)
values('learning','인공신경망,결정트리,서포터 벡터 머신 등이 있다.');
insert into sentence(title, contents)
values('learning','딥러닝 : 인공신경망을 사용하는 머신러닝 모델링 방법 중 하나 다층 인공신경망 구조를 사용하여 빅 데이터 학습');
insert into sentence(title, contents)
values('learning','머신러닝은 입력과 출력을 받아서 알고리즘을 만들어 내는 가정');
insert into sentence(title, contents)
values('learning','데이터를 가지고 학습한다');
insert into sentence(title, contents)
values('learning','머신러닝엔 총 6가지 회귀,예측,이상 값 감지,그룹화, 강화학습이 있음');
insert into sentence(title, contents)
values('learning','분류:정해져있는 카테고리 안에서 분류');
insert into sentence(title, contents)
values('learning','회귀:상황이 주어졌을때, 값을 예측');
insert into sentence(title, contents)
values('learning','예측:회귀+시간');
insert into sentence(title, contents)
values('learning','이상 값 감지: 평소와 다른 특이점을 찾아내는 것');
insert into sentence(title, contents)
values('learning','그룹화: 내가 가지고 있는 데이터들을 그룹화(추천하는데 많이사용)');
insert into sentence(title, contents)
values('learning','Supervised Learning == 지도 학습 == 감독 학습');
insert into sentence(title, contents)
values('learning','UnSupervised Learning == 비 지도 학습 == 비 감독 학습');
insert into sentence(title, contents)
values('learning','Reinforcement Learning == 목표 지향 학습');
insert into sentence(title, contents)
values('learning','머신러닝의 핵심의 의미 Y=W*X + b');
insert into sentence(title, contents)
values('learning','딥러닝이란? 인공 신경(인간의 뇌세포와 비슷하게 만듦) -> Neural Network');
insert into sentence(title, contents)
values('learning','인공 신경 입력(여러 개 입력가능)-> 인공 신경 -> 출력');
insert into sentence(title, contents)
values('learning','딥러닝 : 이미지,자연어 처리, 가격 예측, 신약 개발(질병 진단), 음성 인식, 로봇 자율주행에 딥러닝 사용');

insert into sentence(title, contents)
values('spring','@Controller : 스프링 MVC의 컨트롤러 객체임을 명시하는 어노테이션');
insert into sentence(title, contents)
values('spring','@RequestMapping : 특정 URI에 매칭되는 클래스나 메소드임을 명시하는 어노테이션');
insert into sentence(title, contents)
values('spring','@RequestParam : request의 파라미터를 가져오는 기능을 하며 메소드내에 변수로 활용');
insert into sentence(title, contents)
values('spring','@RequestHeader : 요청(request)에서 특정 HTTP헤더 정보를 추출할 때 사용');
insert into sentence(title, contents)
values('spring','@PathVariable : 메소드 파라미터 앞에 사용하며 해당 URL에 { } 특정 파라미터를 변수로 활용 가능');
insert into sentence(title, contents)
values('spring','@CookieValue : 현재 사용자의 쿠키가 존재하는 경우 쿠키 이름을 이용해서 쿠키 값을 추출');
insert into sentence(title, contents)
values('spring','@ModelAttribute : view에서 전달해주는 파라미터를 클래스의 멤버변수로 binding 해주는 어노테이션');
insert into sentence(title, contents)
values('spring','@InitBinder : 파라미터를 수집해서 객체로 만들 경우에 커스터마이징');
insert into sentence(title, contents)
values('spring','@ResponseBody : JSON 형식의 데이터값을 응답할 때 사용하는 것으로 response Body에 형식이 노출객체를 return시 json 라이브러리에 의해 문자열로 변환');
insert into sentence(title, contents)
values('spring','@RequestBody : 요청이 들어온 데이터(Json, XML)를 클래스나 model로 매핑');
insert into sentence(title, contents)
values('spring','@Repository : DAO 객체');
insert into sentence(title, contents)
values('spring','@Service : 서비스 객체');
insert into sentence(title, contents)
values('spring','@SessionAttributes : @SessionAttributes(“name”)이라고 하면 Model에 key값이 “name”으로 있는 값은 자동으로 세션에 저장');
insert into sentence(title, contents)
values('spring','@Runwith : JUnit 프레임워크의 테스트를 할수 있도록 설정 @Runwith에 Runner클래스 설정시 JUnit의 내장된 runner대신 설정한 SpringJUnit4ClassRunner를 실행');
insert into sentence(title, contents)
values('spring','@ContextConfiguration : 지정된 클래스나 문자열을 이용해 필요한 객체들을 스프링내 객체로 등록	');
insert into sentence(title, contents)
values('spring','@Log4j : Lombok을 이용해 로그를 기록하기 위한 Logger 변수 생성');
insert into sentence(title, contents)
values('spring','@Autowired : 해당 인스턴스 변수에 스프링으로부터 자동으로 Bean을 주입, new 연사자와 같음');
insert into sentence(title, contents)
values('spring','@Test : JUnit에서 테스트 대상을 표시하며 단위테스트 메소드임을 명시');
insert into sentence(title, contents)
values('spring','@Component : Component는 스프링에게 해당 클래스가 관리해야할 대상임을 표시	 ');
insert into sentence(title, contents)
values('spring','@Setter : Set( ) 메소드를 자동으로 생성하여, 사용할수 있게 해줌');
insert into sentence(title, contents)
values('spring','@Getter : Get( ) 메소드를 자동으로 생성하여, 사용할수 있게 해줌');
insert into sentence(title, contents)
values('spring','@GetMapping : RequestMapping(Method=RequestMethod.GET)과 동일	');
insert into sentence(title, contents)
values('spring','@PostMapping : RequestMapping(Method=RequestMethod.POST)과 동일');
insert into sentence(title, contents)
values('spring','@Transactional : 데이터베이스 트랜잭션 설정 어노테이션 (AutoCommit, rollback, commit 등) DB의 접근이 하나라도 실패시 rollback 비지니스 로직과 트랜잭션 관리는 모두 Service에서 하기때문에 Service 메소드는 @Transactional 사용');
insert into sentence(title, contents)
values('spring','@Cacheable : 메소드 앞에 지정하여 사용하며 메소드를 최초 호출시 캐시에 적재하고 추후 동일한 요청이 들어올 시 캐시의 결과를 리턴. 메소드의 호출 횟수를 줄여주는 어노테이션');
insert into sentence(title, contents)
values('spring','@RestController : Spring Restful Controller로 데이터를 반환하는 컨트롤러이다. view가 필요없는 API에 지원(Spring 4.0.1 이후)하며, @RequestMapping 메소드가 @ResponseBody 의미를 가정한다. data(json, xml) return 시 사용');
insert into sentence(title, contents)
values('spring','@AllArgsConstructor " 모든 필드를 파라미터로 가지는 생성자를 생성');
insert into sentence(title, contents)
values('spring','@NoArgsConstructor : 파라미터가 없는 기본 생성자를 생성');
insert into sentence(title, contents)
values('spring','@RequiredArgsConstructor : final, @NonNull 인 필드값만 파라미터로 받는 생성자를 생성');
insert into sentence(title, contents)
values('spring','@EqualsAndHashCode : equals( )메소드와 hashCode( )메소드를 오버라이드');
insert into sentence(title, contents)
values('spring','@Data : @toString, @getter/setter, @RequiredArgsConstructor 등 모두 사용한것과 같은 기능');
insert into sentence(title, contents)
values('spring','@Entity : 데이터베이스의 테이블과 1대1 매칭');
insert into sentence(title, contents)
values('spring','@Id : 테이블 컬럼의 기본키에 설정');
insert into sentence(title, contents)
values('spring','@Column : 테이블 컬럼에 설정, @Entity로 지정시 생략가능');
insert into sentence(title, contents)
values('spring','@GeneratedValue : 기본키에 지정된 auto increment 등의 속성을 지정');
insert into sentence(title, contents)
values('spring','@EmbeddedId : 테이블 컬럼의 복합키에 설정');
insert into sentence(title, contents)
values('spring','@Enumerated : enum과 관련되어 있으며, EnumType.ORDINAL, STRING의 속성');
insert into sentence(title, contents)
values('spring','@Transient : 데이터베이스에서 실제 사용하지 않는 것을 지정, 임시값으로 활용');




insert into sentence(title, contents)
values('html/css','HTML : 웹 문서를 표현하기 위한 하이퍼 텍스트 마크업(Hyper Text Markup Language) 언어이다.');
insert into sentence(title, contents)
values('html/css','현재 사용하는 HTML은 HTML5로 시멘틱 요소와 미디어 요소를 제공하며 다양한 API를 제공한다.');
insert into sentence(title, contents)
values('html/css','태그 : HTML문서를 구성하고 있는 요소로 태그에는 이름과 속성이 있다.');
insert into sentence(title, contents)
values('html/css','시작 태그와 종료 태그 : 예) <h1> h1 태그입니다. </h1>');
insert into sentence(title, contents)
values('html/css','<h1>는 시작을 알리는 태그이며, </h1>은 종료가 된다는 것을 뜻한다. 시작 태그와 종료 태그는 쌍을 이룬다.');
insert into sentence(title, contents)
values('html/css','시작 태그와 종료 태그 구분이 없는 태그 : 예) </br>');
insert into sentence(title, contents)
values('html/css','<h1~h6>은 제목 구분을 하며, 숫자가 커질수록 글자 크기가 작아진다.');
insert into sentence(title, contents)
values('html/css','<p>내용</p> 단락을 변경해준다.');
insert into sentence(title, contents)
values('html/css','<a herf="주소">텍스트</a></p>');
insert into sentence(title, contents)
values('html/css','<i>글씨 기울어지는 태그</i>');
insert into sentence(title, contents)
values('html/css','<sup>글씨 위쪽에 글씨가 작게 표시되게 함</sup>');
insert into sentence(title, contents)
values('html/css','<ins>링크 걸지 않아도 밑줄이 생기게 함</ins>');
insert into sentence(title, contents)
values('html/css','<del>글자에 줄이 그어지게 함</del>');
insert into sentence(title, contents)
values('html/css','<ul>태그 : unordered list');
insert into sentence(title, contents)
values('html/css','<li> 태그 : list item');
insert into sentence(title, contents)
values('html/css','<ol> 태그 : ordered list');
insert into sentence(title, contents)
values('html/css','<dl> 태그 : Definition List : 용어의 목록의 시작과 끝을 지정하는데 쓰인다');
insert into sentence(title, contents)
values('html/css','<dt> 태그 : Definition Team 약자 : 정의하고자 하는 제목을 나타내는 데 사용된다.');
insert into sentence(title, contents)
values('html/css','<dd> 태그 : Definition Description의 약자 : 내용을 적을 곳에 사용된다.');
insert into sentence(title, contents)
values('html/css','<a> 태그 : taraget="_blank" 현재 브라우저의 부모 브라우저 창으로 설정한다.');
insert into sentence(title, contents)
values('html/css','<a> 태그 : taraget="_parent" 부모가 없는 경우 -self와 동일하다.');
insert into sentence(title, contents)
values('html/css','<a> 태그 : taraget="_self" 현재와 동일한 브라우저 창으로 설정한다.');
insert into sentence(title, contents)
values('html/css','<a> 태그 : taraget="_top" 최상의 브라우저 창에서 설정한다. 부모가 없는 경우 _self와 동일하다.');
insert into sentence(title, contents)
values('html/css','<img> 태그 : alt = "텍스트" : 이미지의 대체 문자를 설정');
insert into sentence(title, contents)
values('html/css','<img> 태그 :  src = "이미지 경로" : 이미지의 경로를 설정');
insert into sentence(title, contents)
values('html/css','<img> 태그 :  align left, right, top, middle, bottom : 왼쪽, 오른쪽, 위, 중간, 아래쪽으로 정렬');
insert into sentence(title, contents)
values('html/css','<input>태그 : 데이터를 입력할 수 있는 폼 컨트롤을 정의한다.');
insert into sentence(title, contents)
values('html/css','<article> 태그 : 독립적으로 사용되는 컨텐츠를 지정합니다.');
insert into sentence(title, contents)
values('html/css','<header> 태그 : 문서의 상단 부분 영역을 표현해 줍니다.');
insert into sentence(title, contents)
values('html/css','<footer> 태그 : 문서의 바닥글을 정의 합니다.');
insert into sentence(title, contents)
values('html/css','&nbsp; : 띄어쓰기 한 칸을 의미하는 특수 기호 ');
insert into sentence(title, contents)
values('html/css','pre 태그 : 글을 작성하는 태그 + HTML 문서에 작성된 모양 그대로가 화면에 출력');
insert into sentence(title, contents)
values('html/css','captopm 태그 : 테이블의 제목이나 설명을 추가하는 태그');
insert into sentence(title, contents)
values('html/css','textarea 태그 : 여러 줄의 문자열을 입력할 수 있는 태그');
insert into sentence(title, contents)
values('html/css','fieldset, legend 태그 : 폼 요소를 묶고 묶은 그룹에 이름을 붙히는 태그');


insert into sentence(title, contents)
values('javascript','JavaScript란:  웹브라우저를 프로그래밍적으로 제어하기 위해 필요한 언어이다.');
insert into sentence(title, contents)
values('javascript','HTML,CSS 와 함께 웹 프론트엔드를 구성하는 요소 중 하나이고, 동적으로 컨텐츠를 바꾸고, 멀티미디어를 다루고,사용자와 상호작용 할수 있는 동적인 언어이다.');
insert into sentence(title, contents)
values('javascript','오직 HTML 상에서 script태그 만으로 사용이 가능하다.');
insert into sentence(title, contents)
values('javascript','각종 환경을 프로그래밍적으로 제어하기 위한 언어이다.');
insert into sentence(title, contents)
values('javascript',' <script></script> 이 부분은 웹브라우저에게 지금부터 자바스크립트의 문법에 따라서 해석하라고 알려주는 일종의 태그이다.');
insert into sentence(title, contents)
values('javascript','주석 :  개발자들이 따로 덧붙이는 메모 부분이다. // 나 /**/ 사이에 주석을 적어주자.');
insert into sentence(title, contents)
values('javascript','배열의 요소를 추가하거나 제거하는 메서드 push(), pop(), shift(), unshift()');
insert into sentence(title, contents)
values('javascript','자바스크립트 내에서는 큰따옴표나 작은따옴표가 붙지 않은 숫자는 그냥 숫자로 인식된다.');
insert into sentence(title, contents)
values('javascript','문자는 큰 따옴표 또는 작은 따옴표 중 하나로 감싸야 한다.');
insert into sentence(title, contents)
values('javascript','문자열 안에 따옴표를 포함하고 싶을 때는  앞에 역슬래시를 덧붙여줘야 한다.');
insert into sentence(title, contents)
values('javascript','문자나 숫자 같은 값을 담는 컨테이너로 값을 유지할 필요가 있을 때 사용한다. 변수는 var로 선언한다.');
insert into sentence(title, contents)
values('javascript','생성자 (constructor) : 중괄호 안에는 생성자를 적는다. 객체가 생성이 될 때 자바스크립트 내부에서 호출이 되는 함수.');
insert into sentence(title, contents)
values('javascript',' this와 속성(property) :  생성자의 바디의 this는 클래스를 사용해 만들어질 객체 자기 자신을 의미하고 this 뒤에 붙는 name, price, company는 객체의 속성입니다.');



select * from sentence where title='html/css' order by rand() limit 2


select * from sentence where title='java' order by rand() limit 2;



select * from sentence where title='learning' order by rand() limit 2;



insert into python_board(title, contents, writer)
values('스프링 게시판 만들기1','스프링게시판만들기1','이성훈');




select * from board;
select * from python_board order by idx desc;
select * from pop_user;
select * from gsentence;

select * from gsentence order by rand() limit 2;

select * from sentence where idx=122;
select * from sentence order by rand() limit 2;




insert into pop_user values('admin','12','이성훈');

insert into pop_board(title, contents, writer)
values('스프링 게시판 만들기2','스프링게시판만들기2','ls');
