<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/common/base.jsp">
    <c:param name="title">
        得点管理システム
    </c:param>

    <c:param name="scripts"></c:param>
    <c:param name="content">
        <section class="mp-4">
            <h2 class="">学生情報登録</h2>

            <form method="get">
              <div class="row border mx-3 mb-3 py-2 align-items-center rounded" id="filter">
                <div class="col-4">
                    <label class="form-label" for="creat_ent_year">入学年度</label>
                    <input class="" type="text" id="creat_ent_year" readonly value="${ent_year}">
                </div>

                <div class="col-4">
                    <label class="form-label" for="creat_no_text">学生番号</label>
                    <input class="" type="text" id="creat_no_text" readonly value="${no}">
                </div>

                <div class="col-4">
                    <label class="form-label" for="creat_name_text">氏名</label>
                    <input class="" type="text" id="creat_name_text" maxlength="30" name="name"
                     required value="${name}">
                </div>

                <div class="col-4">
                    <label class="form-label" for="creat_class_select">クラス</label>
                    <select class="form-select" id="creat_class_select" name="class_num">
                        <option value="0">--------</option>
                        <c:forEach var="num" items="${creat_class_set}">
                            <option value="${num}">${num}</option>
                        </c:forEach>
                    </select>

                <div class="col-2 form-check text-center">
                    <label class="form-check-label" for="si_attend">在学中
                        <input class="form-check-input" type="checkbox" id="si_attend"
                         value="t">
                    </label>
                </div>
    

                <div class="col-2 ">
                    <button class="btn" type="submit" name="end">変更</button>
                </div>
                <div class=""><a href="">戻る</a></div>
              </div>
            </form>



        </section>
    </c:param>
</c:import>