<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../../base.jsp">
    <c:param name="title">
        得点管理システム
    </c:param>

    <c:param name="scripts"></c:param>
    <c:param name="content">
        <section class="mp-4">
            <h2 class="">学生情報登録</h2>
            <form method="get">
              <div class="" id="filter">
                <div class="">
                    <label class="form-label" for="creat_ent_year">入学年度</label>
                    <select class="form-select" id="creat_ent_year" name="ent_year">
                        <option value="0">--------</option>
                        <c:forEach var="year" items="${ent_year}">
                            <option value="${year}">${year}</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="col-4">
                    <label class="form-label" for="creat_no_text">学生番号</label>
                    <input class="" type="text" id="creat_no_text" maxlength="10" name="no"
                     value="学籍番号を入力してください">
                </div>

                <div class="col-4">
                    <label class="form-label" for="creat_name_text">氏名</label>
                    <input class="" type="text" id="creat_name_text" maxlength="30" name="name"
                     value="氏名を入力してください">
                </div>

                <div class="col-4">
                    <label class="form-label" for="creat_class_select">クラス</label>
                    <select class="form-select" id="creat_class_select" name="class_num">
                        <option value="0">--------</option>
                        <c:forEach var="num" items="${creat_class_set}">
                            <option value="${num}">${num}</option>
                        </c:forEach>
                    </select>

                <div class="col-2 ">
                    <button  class="btn" name="end">登録して完了</button>
                </div>
                <div class=""><a href="">戻る</a></div>
              </div>
            </form>



        </section>
    </c:param>
</c:import>