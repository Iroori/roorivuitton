// 1) chart를 세팅할 수 있는 canvas 태그 가져오기
let myChart = document.getElementById("chart1");
// 2) chart 생성
// 2-1) 데이터 준비
function random(){
    return Math.round(Math.random()*100)
}

function randomData(){
    return [
        random(),
        random(),
        random(),
        random(),
        random(),
        random(),
        random(),
        random(),
        random(),
        random()					
    ]
}

            

// =========임의의 데이터를 생성하는 함수를 만들어 봄 !================
    
let activeChart = new Chart(myChart,{
    type : 'bar', //차트 타입을 bar로 설정
    data : { // chart에 넣어주고 싶은 데이터 설정
        labels : [...randomData(), ...randomData()],
        // ... 점 3개를 작성 ---> 배열의 형태로 받아오겠다 라는 의미!
        datasets : [
            {
            // 4. 차트에 들어갈 데이터
            data : [...randomData(), ...randomData()],
            backgroundColor : [
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.4)',
                'rgba(54, 162, 235, 0.4)',
                'rgba(255, 206, 86, 0.4)',
                'rgba(75, 192, 192, 0.8)',
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.5)',
                'rgba(54, 162, 235, 0.1)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.1)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(200, 206, 86, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(155, 102, 255, 1)',
                    'rgba(155,99,132,1)',
                    'rgba(54, 162, 235, 1)'
                    ]
                
            }
            
        ]
                
    },				
    // x축, y축 과 관련된 옵션 설정
    options : { // scales,legned, tooltips, hover
        scales : { //x축,y축 관련된 옵션
            xAxes : {
                display : false,
                gridLines : false							
            },
            yAxes : {
                display : false,
                gridLines : false
            }
                                    
        },
        plugins : {
        legend : {
            display : false
        }
        }		
        
    }
    
                
    
})

function activeCount(){
    // 차트 안에 있었던 맨 앞쪽 데이터 삭제
    activeChart.data.datasets[0].data.splice(0,1)
    // 차트 안에 데이터 추가
    activeChart.data.datasets[0].data.push(random())
    
    // 차트 업데이트
    activeChart.update();
}


// 특정 시간에 계속해서 반복하게끔 하는 기능
setInterval(() => {
    activeCount();
}, 1000);










let myChart_2 = document.getElementById("chart2");

function random2(){
    return Math.round(Math.random()*100)
}

function randomData2(){
    return [
        random2(),
        random2(),
        random2(),
        random2(),
        random2(),
        random2(),
        random2(),
        random2(),
        random2(),
        random2()					
    ]
}
// =========임의의 데이터를 생성하는 함수를 만들어 봄 !================
    
let activeChart2 = new Chart(myChart_2,{
    type : 'scatter', //차트 타입을 bar로 설정
    data : { // chart에 넣어주고 싶은 데이터 설정
        labels : [...randomData2(), ...randomData2()],
        // ... 점 3개를 작성 ---> 배열의 형태로 받아오겠다 라는 의미!
        datasets : [
            {
            // 4. 차트에 들어갈 데이터
            data : [...randomData2(), ...randomData2()],
            backgroundColor : [
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.4)',
                'rgba(54, 162, 235, 0.4)',
                'rgba(255, 206, 86, 0.4)',
                'rgba(75, 192, 192, 0.8)',
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.5)',
                'rgba(54, 162, 235, 0.1)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.1)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(200, 206, 86, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(155, 102, 255, 1)',
                    'rgba(155,99,132,1)',
                    'rgba(54, 162, 235, 1)'
                    ]
                
            }
            
        ]
                
    },				
    // x축, y축 과 관련된 옵션 설정
    options : { // scales,legned, tooltips, hover
        scales : { //x축,y축 관련된 옵션
            xAxes : {
                display : false,
                gridLines : false							
            },
            yAxes : {
                display : false,
                gridLines : false
            }
                                    
        },
        plugins : {
        legend : {
            display : false
        }
        }		
        
    }
    
                
    
})

function activeCount2(){
    // 차트 안에 있었던 맨 앞쪽 데이터 삭제
    activeChart2.data.datasets[0].data.splice(0,1)
    // 차트 안에 데이터 추가
    activeChart2.data.datasets[0].data.push(random2())
    
    // 차트 업데이트
    activeChart2.update();
}


// 특정 시간에 계속해서 반복하게끔 하는 기능
setInterval(() => {
    activeCount2();
}, 1000);	





let myChart_3 = document.getElementById("chart3");

function random3(){
    return Math.round(Math.random()*100)
}

function randomData3(){
    return [
        random3(),
        random3(),
        random3(),
        random3(),
        random3(),
        random3(),
        random3(),
        random3(),
        random3(),
        random3()					
    ]
}
// =========임의의 데이터를 생성하는 함수를 만들어 봄 !================
    
let activeChart3 = new Chart(myChart_3,{
    type : 'line', //차트 타입을 bar로 설정
    data : { // chart에 넣어주고 싶은 데이터 설정
        labels : [...randomData3(), ...randomData3()],
        // ... 점 3개를 작성 ---> 배열의 형태로 받아오겠다 라는 의미!
        datasets : [
            {
            // 4. 차트에 들어갈 데이터
            data : [...randomData3(), ...randomData3()],
            backgroundColor : [
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.4)',
                'rgba(54, 162, 235, 0.4)',
                'rgba(255, 206, 86, 0.4)',
                'rgba(75, 192, 192, 0.8)',
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.5)',
                'rgba(54, 162, 235, 0.1)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.1)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(200, 206, 86, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(155, 102, 255, 1)',
                    'rgba(155,99,132,1)',
                    'rgba(54, 162, 235, 1)'
                    ]
                
            }
            
        ]
                
    },				
    // x축, y축 과 관련된 옵션 설정
    options : { // scales,legned, tooltips, hover
        scales : { //x축,y축 관련된 옵션
            xAxes : {
                display : false,
                gridLines : false							
            },
            yAxes : {
                display : false,
                gridLines : false
            }
                                    
        },
        plugins : {
        legend : {
            display : false
        }
        }		
        
    }
    
                
    
})

function activeCount3(){
    // 차트 안에 있었던 맨 앞쪽 데이터 삭제
    activeChart3.data.datasets[0].data.splice(0,1)
    // 차트 안에 데이터 추가
    activeChart3.data.datasets[0].data.push(random3())
    
    // 차트 업데이트
    activeChart3.update();
}


// 특정 시간에 계속해서 반복하게끔 하는 기능
setInterval(() => {
    activeCount3();
}, 1000);			
                







let myChart_4 = document.getElementById("chart4");

function random4(){
    return Math.round(Math.random()*100)
}

function randomData4(){
    return [
        random4(),
        random4(),
        random4(),
        random4(),
        random4(),
        random4(),
        random4(),
        random4(),
        random4(),
        random4()					
    ]
}

    
let activeChart4 = new Chart(myChart_4,{
    type : 'polarArea', //차트 타입을 bar로 설정
    data : { // chart에 넣어주고 싶은 데이터 설정
        labels : [...randomData4(), ...randomData4()],
        // ... 점 3개를 작성 ---> 배열의 형태로 받아오겠다 라는 의미!
        datasets : [
            {
            // 4. 차트에 들어갈 데이터
            data : [...randomData4(), ...randomData4()],
            backgroundColor : [
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.4)',
                'rgba(54, 162, 235, 0.4)',
                'rgba(255, 206, 86, 0.4)',
                'rgba(75, 192, 192, 0.8)',
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.5)',
                'rgba(54, 162, 235, 0.1)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.1)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(200, 206, 86, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(155, 102, 255, 1)',
                    'rgba(155,99,132,1)',
                    'rgba(54, 162, 235, 1)'
                    ]
                
            }
            
        ]
                
    },				
    // x축, y축 과 관련된 옵션 설정
    options : { // scales,legned, tooltips, hover
        scales : { //x축,y축 관련된 옵션
            xAxes : {
                display : false,
                gridLines : false							
            },
            yAxes : {
                display : false,
                gridLines : false
            }
                                    
        },
        plugins : {
        legend : {
            display : false
        }
        }		
        
    }
    
                
    
})

function activeCount4(){
    // 차트 안에 있었던 맨 앞쪽 데이터 삭제
    activeChart4.data.datasets[0].data.splice(0,1)
    // 차트 안에 데이터 추가
    activeChart4.data.datasets[0].data.push(random4())
    
    // 차트 업데이트
    activeChart4.update();
}


// 특정 시간에 계속해서 반복하게끔 하는 기능
setInterval(() => {
    activeCount4();
}, 1000);





let myChart_5 = document.getElementById("chart5");

function random5(){
    return Math.round(Math.random()*100)
}

function randomData5(){
    return [
        random5(),
        random5(),
        random5(),
        random5(),
        random5(),
        random5(),
        random5(),
        random5(),
        random5(),
        random5()					
    ]
}
// =========임의의 데이터를 생성하는 함수를 만들어 봄 !================
    
let activeChart5 = new Chart(myChart_5,{
    type : 'radar', //차트 타입을 bar로 설정
    data : { // chart에 넣어주고 싶은 데이터 설정
        labels : [...randomData5(), ...randomData5()],
        // ... 점 3개를 작성 ---> 배열의 형태로 받아오겠다 라는 의미!
        datasets : [
            {
            // 4. 차트에 들어갈 데이터
            data : [...randomData5(), ...randomData5()],
            backgroundColor : [
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.4)',
                'rgba(54, 162, 235, 0.4)',
                'rgba(255, 206, 86, 0.4)',
                'rgba(75, 192, 192, 0.8)',
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.5)',
                'rgba(54, 162, 235, 0.1)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.1)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(200, 206, 86, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(155, 102, 255, 1)',
                    'rgba(155,99,132,1)',
                    'rgba(54, 162, 235, 1)'
                    ]
                
            }
            
        ]
                
    },				
    // x축, y축 과 관련된 옵션 설정
    options : { // scales,legned, tooltips, hover
        scales : { //x축,y축 관련된 옵션
            xAxes : {
                display : false,
                gridLines : false							
            },
            yAxes : {
                display : false,
                gridLines : false
            }
                                    
        },
        plugins : {
        legend : {
            display : false
        }
        }		
        
    }
    
                
    
})

function activeCount5(){
    // 차트 안에 있었던 맨 앞쪽 데이터 삭제
    activeChart5.data.datasets[0].data.splice(0,1)
    // 차트 안에 데이터 추가
    activeChart5.data.datasets[0].data.push(random5())
    
    // 차트 업데이트
    activeChart5.update();
}


// 특정 시간에 계속해서 반복하게끔 하는 기능
setInterval(() => {
    activeCount5();
}, 1000);	


let myChart_6 = document.getElementById("chart6");

function random6(){
    return Math.round(Math.random()*100)
}

function randomData6(){
    return [
        random6(),
        random6(),
        random6(),
        random6(),
        random6(),
        random6(),
        random6(),
        random6(),
        random6(),
        random6()					
    ]
}
// =========임의의 데이터를 생성하는 함수를 만들어 봄 !================
    
let activeChart6 = new Chart(myChart_6,{
    type : 'doughnut', //차트 타입을 bar로 설정
    data : { // chart에 넣어주고 싶은 데이터 설정
        labels : [...randomData6(), ...randomData6()],
        // ... 점 3개를 작성 ---> 배열의 형태로 받아오겠다 라는 의미!
        datasets : [
            {
            // 4. 차트에 들어갈 데이터
            data : [...randomData6(), ...randomData6()],
            backgroundColor : [
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.4)',
                'rgba(54, 162, 235, 0.4)',
                'rgba(255, 206, 86, 0.4)',
                'rgba(75, 192, 192, 0.8)',
                'rgba(75,192,192,0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,99,132,0.5)',
                'rgba(54, 162, 235, 0.1)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.1)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(200, 206, 86, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(155, 102, 255, 1)',
                    'rgba(155,99,132,1)',
                    'rgba(54, 162, 235, 1)'
                    ]
                
            }
            
        ]
                
    },				
    // x축, y축 과 관련된 옵션 설정
    options : { // scales,legned, tooltips, hover
        scales : { //x축,y축 관련된 옵션
            xAxes : {
                display : false,
                gridLines : false							
            },
            yAxes : {
                display : false,
                gridLines : false
            }
                                    
        },
        plugins : {
        legend : {
            display : false
        }
        }		
        
    }
    
                
    
})

function activeCount6(){
    // 차트 안에 있었던 맨 앞쪽 데이터 삭제
    activeChart6.data.datasets[0].data.splice(0,1)
    // 차트 안에 데이터 추가
    activeChart6.data.datasets[0].data.push(random6())
    
    // 차트 업데이트
    activeChart6.update();
}


// 특정 시간에 계속해서 반복하게끔 하는 기능
setInterval(() => {
    activeCount6();
}, 1000);	






