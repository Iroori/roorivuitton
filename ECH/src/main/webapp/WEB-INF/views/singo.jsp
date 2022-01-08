<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Navbar</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="resources/main/css/singo.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <div id="wrap">
            <header>
                <a class="logo" href="/"><img src="resources/main/images/logo.svg" alt="logo"></a>
                <nav>
                    <ul class="nav__links">
                        
                    </ul>
                </nav>
               
                
            </header>
            <div id="content-wrap">
                <aside>                  
                </aside>

                <section class="mains">                    
                    <div class="bin">
                    </div>


                    <form action="#" method="post" class="qaForm">
                      <h2>신고</h2>
                      <div class="poForm">
                        <input type="text" class="po" placeholder="장소 : 강의실6" disabled>
                      </div>
                      <div class="titleForm">
                        <input type="text" class="title" placeholder="제목">
                      </div>
                      <div class="contentForm">
                        <div class="dcont">내용 입력</div>
                        <textarea rows="7" class="form-control" id="contents" name="contents"></textarea>
                      </div>
                      <button type="button" class="btn" onclick="button()">
                        신고하기
                      </button>
                      <script>
                        let button = () => {
                          alert('login Button !')
                        }
                      </script>
                      
                    </form>

                      
                  </section>

                  <ad>
                  </ad>              



            </div>
           




        </div>

        
        
    </body>
</html>