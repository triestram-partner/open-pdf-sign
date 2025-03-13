package org.openpdfsign;

import lombok.extern.slf4j.Slf4j;
import org.eclipse.jetty.server.Server;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Slf4j
public class StopServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        log.info("\'/stop\'' request received => Shutdown program!");
        Server server = CLIApplication.server;
        if (server != null) {

            Runnable stopRunnable = () -> {
                try {
                  System.out.println("STOPPING: " + server);
                  Thread.sleep(1000);
                  server.setStopTimeout(2000);
                  server.stop();
                } catch (Exception e) {
                  e.printStackTrace();
                }
              };
              new Thread(stopRunnable).start();
        }
    }
}
