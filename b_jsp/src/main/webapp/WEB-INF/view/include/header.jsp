<%@ page language="java" %>
<%@ page import="com.grepp.servlet.app.auth.Principal" %>
<header class="header">
  <nav class="navbar white">
    <div class="nav-wrapper ">
      <a href="/" class="brand-logo grey-text">Grepp</a>
      <c:choose>
        <c:when test="${empty principal or principal eq Principal.ANONYMOUS}">
          <ul id="nav-mobile" class="right hide-on-med-and-down grey-text">
            <li><a href="/member/login" class="grey-text">sign in</a></li>
            <li><a href="/member/signup" class="grey-text">sign up</a></li>
          </ul>
        </c:when>
        <c:otherwise>
          <ul id="nav-mobile" class="right hide-on-med-and-down grey-text">
            <li><a href="/member/logout" class="grey-text">logout</a></li>
          </ul>
        </c:otherwise>
      </c:choose>
    </div>
  </nav>
</header>
