<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />" rel="stylesheet">
   <%-- <script src="<c:url value="/resources/js/jquery-2.1.4.js" />" type="text/javascript"></script>--%>
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/1.css" />" rel="stylesheet">
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/2.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/paginate.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/custom.js" />" type="text/javascript"></script>-
    <title>Home</title>

</head>
<body>
<div>
    <jsp:include page="../fragments/header.jsp"/>
</div>



<sec:authorize access="hasRole('ROLE_USER')">
<c:if test="${vote.voteId == 0}">

<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                Vote next plan
            </h3>
        </div>
        <div id="voting">
            <form>
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios">
                                    1
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios">
                                    2
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios">
                                    3
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios">
                                    4
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios">
                                    5
                                </label>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="panel-footer">
                    <button id='vote_button' type="button" class="btn btn-primary btn-sm" >Vote</button>
                    <a href="#">View Result</a>
                </div>
            </form>
        </div>
    </div>

    </c:if>
    </sec:authorize>

    <script type="text/javascript">
        $(document).ready(function()
        {
            $("#vote_button").click(function(){

                if($("input[type='radio'][name='optionsRadios']:checked").length > 0){
                    var chosenvalue = $("input[type='radio'][name='optionsRadios']:checked").val();
                    alert(chosenvalue);
                    $.ajax({
                        type: "POST",
                        contentType : "application/json",
                        url: "/vote",
                        data: JSON.stringify(chosenvalue),
                        dataType : 'json',
                        timeout : 100000,
                        cache: false,
                        success: function (html) {
                        }
                    });
                }
            });
        });

    </script>


<script>
    $(document).ready(function() {
        $('button#vote').click( function() {
            $('button#vote').prop('disabled', true);
        });
    });

</script>
    <script type="text/javascript">
        var yes=0;
        var maybe=0;
        var no=0;
        var notsure=0;
        $('#myForm').one('submit', function() {
            $(this).find('input[type="submit"]').attr('disabled','disabled');
        });
        function writeText (form) {
//If Answer is YES
            if(document.getElementById('yes').checked) {
                yes=yes+1;
                document.getElementById('yes1').innerHTML=yes;
            }else {
                document.getElementById('yes1').innerHTML=yes;
            }
//If Answer is MAYBE
            if(document.getElementById('maybe').checked) {
                maybe=maybe+1;
                document.getElementById('maybe1').innerHTML=maybe;
            }else {
                document.getElementById('maybe1').innerHTML=maybe;
            }
//If Answer is NO
            if(document.getElementById('no').checked) {
                no=no+1;
                document.getElementById('no1').innerHTML=no;
            }else {
                document.getElementById('no1').innerHTML=no;
            }
//If Answer is NOT SURE
            if(document.getElementById('notsure').checked) {
                notsure=notsure+1;
                document.getElementById('notsure1').innerHTML=notsure;
            }else {
                document.getElementById('notsure1').innerHTML=notsure;
            }
            this.disabled = true;}
    </script>

    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Как Вы оцениваете качество нашей работы?
                        </h3>
                    </div>
                    <div class="panel-body">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <form id="form" name="form1" method=:"get" action="">
                                    <table>
                                        <tr>
                                            <td>
                                                <input type="radio" name="radio" id="yes" value="yes" />
                                                <label for="yes"><strong>Отлично</strong></label></td>
                                            <td><div class="output" id="yes1"></div></td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="radio" id="maybe" value="maybe" />
                                                <strong>
                                                    <label for="maybe">Хорошо</label>
                                                </strong></td>
                                            <td><div class="output" id="maybe1"></div></td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="radio" id="no" value="no" />
                                                <strong>
                                                    <label for="no">Могло быть лучше</label>
                                                </strong></td>
                                            <td><div class="output" id="no1"></div></td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="radio" id="notsure" value="notsure" />
                                                <strong>
                                                    <label for="notsure">Плохо</label>
                                                </strong></td>
                                            <td><div class="output" id="notsure1"></div></td>
                                        </tr>
                                    </table>
                                </form>
                            </li>
                        </ul>
                    </div>

                    <div class="panel-footer">
                        <tr>
                            <td align="left"></td>

                            <td><button type="button" class="btn btn-primary btn-sm" id="vote" alt="Vote Now" onClick="writeText(this.form)">Проголосовать</button></td>
                        </tr>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--<script>
        $(document).ready(function() {
            $('button#vote').click( function() {
                $('button#vote').prop('disabled', true);
            });
        });

    </script>--%>
<div class="container">
    <div class="constructor">
        <div class="page">

            <div class="list-of-posts">
        <div class="post">
            <h4 style="text-align:center"> CАН ПЬЕТРО В ВАТИКАН</h4><br/>
    <img src="<c:url value="${pageContext.request.contextPath}/resources/images/5.jpg"/>" float="left"   height="250px" width="350px">
    <h5>    В передней части Величества крупнейших церкви в мире по-прежнему впечатлен до красивых колоннады в четыре
                ряда Бернини, в передней части базилики, затем чудеса, которые лежат внутри величественных Бернини бронзовые
                балдахин, Микеланджело Пиета, мозаика Navicella Джотто, и т.д. 330 Шаги, ведущие в верхней части купола, созданная
                Микеланджело, позволяют вам иметь прекрасный обзор из Рима. Не пропустите это визит в Ватиканских музеев, в
                дополнение к произведениям величайших художников, включают Сикстинской капеллы, шедевр.
            </h5>
            </div>
        <div class="post" float="left">
            <h4 style="text-align:center"> КАСТЕЛЬ САНТ АНДЖЕЛО</h4><br/>
    <img src="<c:url value="${pageContext.request.contextPath}/resources/images/Castel-Gandolfo1.jpg"/>" float="left"  height="250px" width="350px">
            <h5> От базилики Сан-Пьетро заезде пешком в Кастель Сант Анджело, который находится Национальный музей.
                Вы можете полюбоваться шпатлевки, фрески и мебели папские апартаменты, но и важные коллекции древних оружия.
                Кастель Сант Анджело известен среди любителей оперы: в самом деле, с известным террасы бросил тоска: главный
                герой оперы Джакомо Пуччини.
            </h5>
            </div>
        <div class="post">
            <h4 style="text-align:center">ПЬЯЦЦА НАВОНА</h4><br/>
    <img src="../../resources/images/4.jpg" float="left"  height="250px" width="350px">
            <h5>Вид с вершины имеет дизайн, который включает в себя схему Арена, эта площадь была построена на стадион Домициана.
                Существует три фонтаны, фонтана-дель-Моро, Фонтан Нептуна и самое главное, фонтан рек
                Нила, Ганг, Дунай и Рио-де-ла-Плата, разработанный Джан Лоренцо Бернини. Традиционно с начала
                декабря до крещения, площадь занимают лавки игрушки и сладости.
            </h5>
            </div>
        <div class="post">
            <h4 style="text-align:center"> ПАНТЕОН</h4><br/>
    <img src="../../resources/images/21.jpg" float="left"   height="250px" width="350px">
            <h5>Пантеон находятся могилы правителей Королевства Италии и основных исполнителей, включая Рафаэля.
                Гармоничное строительство характеризуется включение сферического пространства внутри цилиндра, как
                высота от пола равны величине ее диаметра. В передней части Пантеона открывает раунда площади находится
                фонтан, разработанная г. Делла порта.
            </h5>
            </div>
        <div class="post">
            <div class="post">
            <h4 style="text-align:center">ПЛОЩАДЬ ИСПАНИИ</h4><br/>
    <img src="../../resources/images/3.jpg" float="left"  height="250px" width="350px">
            <h5>    Это, пожалуй, самой знаменитой площади в Риме, местом встречи для туристов и римлян. Франческо де Санктис его
                безошибочное лестница была построена в 1723, в то время как фонтан, под названием «la Barcaccia» был создан
                Бернини в 1629. В верхней части лестницы находится церкви Тринита дей Монти. От Испании для достижения наиболее
                важные улиц города места исторических и модным.
            </h5>
                </div>
            <div class="post">
            <h4 style="text-align:center">КОЛИЗЕЙ</h4><br/>
    <img src="../../resources/images/11.jpg" float="left"  height="250px" width="350px">
            <h5>Колизей, символ Рима, был построен императоры династии Флавиан между 72-80. Крупнейший амфитеатр в Римской империи был около 70 тысяч зрителей, наблюдения за бои между гладиаторов, охота на диких животных или выполнение заключенных смертной казни.
                В средние века был преобразован в крепость, затем в карьере строительных материалов, домом для больницы; только в середине XVIII века был заблокирован разграбления и разрушения когда Колизей было объявлено святое место, Бенедикт XIV.
            </h5>
                </div>
            <div class="post">
            <h4 style="text-align:center">ВИКТОРИАНСКАЯ</h4><br/>
     <img src="../../resources/images/2934446001_e2a22a077d_b.jpg" float="left"  height="250px" width="350px">
            <h5>Викторианский или Монумент Витторио Эмануэле II, первый король Италии, является монументальный комплекс был открыт в 1911 году по случаю пятидесятой годовщины объединения Италии и с 1921 экономит останки неизвестного солдата. Внутри музея Рисорджименто и храм флаги. Этот визит является бесплатным. Здесь вы можете полюбоваться все из Рима.
            </h5>
                </div>
            <div class="post">
            <h4 style="text-align:center">КАПИТОЛИЙ</h4><br/>
    <img src="../../resources/images/Castel-Gandolfo1.jpg" float="left"  height="250px" width="350px">
            <h5>На площади, создан Микеланджело, доминируют три дворцов: Палаццо Senatorio, место муниципальной администрации, Палаццо деи Conservatori и Палаццо Нуово, которые охраняют великолепные сокровища Капитолийская музеев.
                В галерее представлены картины от 14 до 18 века с внеочередной мастера, такие как Тициан, Пьетро да Кортона, Караваджо, Guercino, Рубенс и многие другие. В центре площади Вы можете полюбоваться реплики бронзовая статуя Марка Аврелия, база была создана Микеланджело и оригинал расположен в прилегающих музеев.
            </h5></div>
        </div>
                <div class="pagination">

                </div>
            </div>
<%--
        <c:forEach items="${content}" var="row">
            <p>${row.content}</p>
        </c:forEach>--%>
    </div>
</div>
<div>
    <jsp:include page="../fragments/footer.jsp"/>
</div>
    </div>
</body>
</html>
