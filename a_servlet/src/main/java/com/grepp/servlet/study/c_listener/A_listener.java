package com.grepp.servlet.study.c_listener;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionAttributeListener;
import jakarta.servlet.http.HttpSessionBindingEvent;

@WebListener
public class A_listener implements ServletContextListener, HttpSessionAttributeListener {

    private ServletContext context;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        context = sce.getServletContext();
        context.setAttribute("userCnt", 0);
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        if (event.getName().equals("principal")){
            int cnt = (int) context.getAttribute("userCnt");
            context.setAttribute("userCnt", ++cnt);
        }
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        if (event.getName().equals("principal")){
            int cnt = (int) context.getAttribute("userCnt");
            context.setAttribute("userCnt", --cnt);
        }
    }
}
