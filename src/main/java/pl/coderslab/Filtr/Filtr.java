package pl.coderslab.Filtr;

import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.LogRecord;

@WebFilter(urlPatterns = "/*")
public class Filtr extends OncePerRequestFilter {

    @Override
    protected void doFilterInternal(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, FilterChain filterChain) throws ServletException, IOException {

        if (isAllowedOnlyForLoggedIn(httpServletRequest.getRequestURI().toString(), httpServletRequest.getContextPath())
                && httpServletRequest.getSession().getAttribute("email") == null) { // test if user not logged in

            System.out.println("block");
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/user/login");
            return;
        }
        // handle being loggedin
        System.out.println("allow");
        filterChain.doFilter(httpServletRequest, httpServletResponse);
    }

    private boolean isAllowedOnlyForLoggedIn(String url, String contextPath) {
        Set<String> allowedWithoutBeingLoggedIn = new HashSet<>(Arrays.asList(
                contextPath + "/user/login",contextPath + "/",contextPath + "/user/register"));

        return !allowedWithoutBeingLoggedIn.contains(url);
    }
}