package bibliot;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.*;

/**
 * Created by Elisabeth on 18.04.2017.
 *
 */
@WebFilter(urlPatterns={"/blocked/*", "/servlet"}, initParams = { @WebInitParam(name = "excludedExt", value = "jpeg jpg png pdf html css js") })
public class FilterLogIn implements Filter{

  private static Set<String> excluded;

  @Override
  public void init(FilterConfig filterConfig) throws ServletException {
    String excludedString = filterConfig.getInitParameter("excludedExt");
    if (excludedString != null) {
      excluded = Collections.unmodifiableSet(
          new HashSet<>(Arrays.asList(excludedString.split(" ", 0))));
    } else {
      excluded = Collections.<String>emptySet();
    }
  }
  private boolean isExcluded(HttpServletRequest request) {
    String path = request.getRequestURI();
    String extension = path.substring(path.indexOf('.', path.lastIndexOf('/')) + 1).toLowerCase();
    return excluded.contains(extension);
  }

  @Override
  public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

      HttpServletRequest request = (HttpServletRequest) servletRequest;
      HttpServletResponse response = (HttpServletResponse) servletResponse;

      HttpSession session = request.getSession();

      if ((session == null) || (session.getAttribute("loggedIn") == null)) {
        response.sendRedirect(request.getContextPath() + "/accessDenied.jsp");
      } else {
        if (!isExcluded(request)) {
            History last = new History();
            last.setUrl(((HttpServletRequest) request).getRequestURI());
            last.setDatetime(LocalDateTime.now());
            ArrayList<History> hist = (ArrayList<History>) session.getAttribute("history");
            hist.add(last);
            session.setAttribute("history", hist);
            filterChain.doFilter(request, response);
          }
        }
    }


  @Override
  public void destroy() {

  }
}
