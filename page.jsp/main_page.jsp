<% request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="../css/mainpage.css">
</head>
<body>
    <div class="menuButton_box" onclick="navEvent()">
        <img class="menuButton_img" src="../img/menuButton.jpg" >
    </div>
    <nav id="nav">
        <div class="menu_text">메뉴</div>
        <div class="info_button">내 정보 보기</div>
        <div class="employee_text">사원목록</div>
        <div class="employee_box">
            <div id="employee_tag">
                <div id="employee_name">박서진</div>
                <div id="employee_name">오동하</div>
            </div>
        </div>
        
    </nav>
    <header>
        <div class="add_box">
            <input class='date' type="date">
            <input class='time' type="time">
            <div id="text">-</div>
            <input class='time' type="time">
            
        </div>
        <div class="add_box">
            <input class='add_input'type="text" maxlength="3"placeholder="일정 내용" onfocus="this.placeholder=''" onblur="this.placeholder='일정 내용'">
            <div class='add_button'>켈린더에 추가</div>
        </div>
    </header>
    <main>
        <div class="yearMonth_box">
            <div class="left_button" onclick="monthDownEvent()"><</div>
            <div id="year">2022</div>
            <div id="date_text">년</div>
            <div id="month">11</div>
            <div id="date_text">월</div>
            <div class="right_button" onclick="monthUpEvent()">></div>
        </div>
        <div id="calendar30_box">
        </div>
        
    </main>
    <script>

    var date31 = document.createElement("div")
        date31.classList.add('date_tag')
        date31.id ='date31'

    var day31 = document.createElement("div")
        day31.id ='day'
        day31.innerHTML = 31

    var date29 = document.createElement("div")
        date29.classList.add('date_tag')
        date29.id ='date_tag(30)29'

    var day29 = document.createElement("div")
        day29.id ='day'
        day29.innerHTML = 29

    var date30 = document.createElement("div")
        date30.classList.add('date_tag')
        date30.id ='date_tag(30)30'

    var day30 = document.createElement("div")
        day30.id ='day'
        day30.innerHTML = 30
        
    function monthDownEvent() {
        var month = parseInt(document.getElementById('month').innerHTML)
        var year = parseInt(document.getElementById('year').innerHTML)

        
        if(month > 1) {
            document.getElementById('month').innerHTML = month - 1
        }
        else {
            document.getElementById('month').innerHTML = 12
            document.getElementById('year').innerHTML = year - 1
        }
        if (month == 1|| month  == 4 || month  == 6 ||
        month  == 7 || month  == 9 || month  == 11) {
            
            document.getElementById('calendar30_box').appendChild(date31)
            document.getElementById('date31').appendChild(day31)
            
        }
        else if (month == 3) {
            document.getElementById('calendar30_box').removeChild(document.getElementById('date31'))
            document.getElementById('calendar30_box').removeChild(document.getElementById('date_tag(30)30'))
            document.getElementById('calendar30_box').removeChild(document.getElementById('date_tag(30)29'))
        }
        else if (month  == 2 ) {
            document.getElementById('calendar30_box').appendChild(date29)
            document.getElementById('date_tag(30)29').appendChild(day29)
            document.getElementById('calendar30_box').appendChild(date30)
            document.getElementById('date_tag(30)30').appendChild(day30)
            document.getElementById('calendar30_box').appendChild(date31)
            document.getElementById('date31').appendChild(day31)
        }
        
        else {
            document.getElementById('calendar30_box').removeChild(document.getElementById('date31'))
        }
    
    }

    function navEvent() {
        if(document.getElementById('nav').style.display == 'none') {
        document.getElementById('nav').style.display = 'block'
        }
        else {
            document.getElementById('nav').style.display = 'none'
        }

    }

    for (var i = 1; i<31; i++) {
        var date = document.createElement("div")
        date.classList.add('date_tag')
        date.id ='date_tag(30)' + i
        document.getElementById('calendar30_box').appendChild(date)
        
        var day = document.createElement("div")
        day.id ='day'
        day.innerHTML = i
        document.getElementById('date_tag(30)'+i).appendChild(day)
    }

    function monthUpEvent() {
        var month = parseInt(document.getElementById('month').innerHTML)
        var year = parseInt(document.getElementById('year').innerHTML)
        if(month < 12) {
            document.getElementById('month').innerHTML = month + 1
        }
        else {
            document.getElementById('month').innerHTML = 1
            document.getElementById('year').innerHTML = year + 1
        }
        if (month == 12 || month  == 4 || month  == 6 ||
        month  == 7 || month  == 9 || month  == 11) {
            document.getElementById('calendar30_box').appendChild(date31)
            document.getElementById('date31').appendChild(day31)
        }
        else if (month == 1) {
            document.getElementById('calendar30_box').removeChild(document.getElementById('date31'))
            document.getElementById('calendar30_box').removeChild(document.getElementById('date_tag(30)30'))
            document.getElementById('calendar30_box').removeChild(document.getElementById('date_tag(30)29'))
        }
        else if (month == 2) {
            document.getElementById('calendar30_box').appendChild(date29)
            document.getElementById('date_tag(30)29').appendChild(day29)
            document.getElementById('calendar30_box').appendChild(date30)
            document.getElementById('date_tag(30)30').appendChild(day30)
            document.getElementById('calendar30_box').appendChild(date31)
            document.getElementById('date31').appendChild(day31)
        }
        else {
            document.getElementById('calendar30_box').removeChild(document.getElementById('date31'))
        }
    }
    </script>
</body>
</html>