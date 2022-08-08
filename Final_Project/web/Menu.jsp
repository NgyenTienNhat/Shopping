<%-- 
    Document   : Menu
    Created on : Mar 2, 2022, 10:06:12 AM
    Author     : Nguyen Tien Nhat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!-- Menu Start -->
        <div class="container-fluid">
            <div class="row bg-secondary py-1 px-xl-5">
                <div class="col-lg-6 d-none d-lg-block">
                    <div class="d-inline-flex align-items-center h-100">
                        <a class="text-body mr-3" href="">About</a>
                        <a class="text-body mr-3" href="">Contact</a>
                        <a class="text-body mr-3" href="">Help</a>
                        <a class="text-body mr-3" href="">FAQs</a>
                    </div>
                </div>
                <div class="col-lg-6 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <c:if test="${sessionScope.accountC != null}">
                            <div  class="btn-group">
                                <a type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">Hello Customer: ${sessionScope.accountC.account}</a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#">My Account</a>
                                    <a class="dropdown-item" href="#">My Profile</a>
                                    <a class="dropdown-item" href="<c:url value="/logout"/>">Logout</a>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.accountM != null}">
                            <div  class="btn-group">
                                <a type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">Hello Manager: ${sessionScope.accountM.account}</a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="<c:url value="/manager"/>">Manager Product</a>
                                    <a class="dropdown-item" href="<c:url value="/logout"/>">Logout</a>
                                </div>
                            </div>
                        </c:if>

                        <c:if test="${sessionScope.accountC == null && sessionScope.accountM == null}">
                            <div  class="btn-group">
                                <a type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">My Account</a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="<c:url value="/Login.jsp"/>">Sign in</a>
                                    <a class="dropdown-item" href="<c:url value="/Login.jsp"/>">Sign up</a>
                                </div>
                            </div></c:if>

                        </div>
                        <div class="d-inline-flex align-items-center d-block d-lg-none">
                            <a href="" class="btn px-0 ml-2">
                                <i class="fas fa-heart text-dark"></i>
                                <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                            <a href="" class="btn px-0 ml-2">
                                <i class="fas fa-shopping-cart text-dark"></i>
                                <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
                    <div class="col-lg-4">
                        <a href="home" class="text-decoration-none">
                            <span class="h1 text-uppercase text-primary bg-dark px-2">Nhat</span>
                            <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Store</span>
                        </a>
                    </div>
                    <div class="col-lg-4 col-6 text-left">
                        <form action="search" >
                            <div class="input-group">
                                <input value="${search}" name="txt" type="text" class="form-control" placeholder="Search for products">
                            <div class="input-group-append">
                                <span class="input-group-text bg-transparent text-primary">
                                    <i class="fa fa-search"></i>
                                </span>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-4 col-6 text-right">
                    <p class="m-0">Customer Service</p>
                    <h5 class="m-0">+012 345 6789</h5>
                </div>
            </div>
        </div>
        <!-- Menu End -->
