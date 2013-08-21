package com.easyinfinitescroll;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class EasyInfiniteScrollServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");
		
		
		//page 1
		//Also something you can retrieve list of users in DAOGetUsersByPage(1),....
		if(new Integer((String)req.getParameter("page"))== 1){
			
			
			//return page 1
			StringBuffer sb = new StringBuffer();
			sb.append("<!--page 1 --> <h3>PAGE 1 LOADED BY AJAX</h3> " +
					  "<div> Por conseguinte, a valorização d fatores" +
					  " subjetivos facilita a criação das posturas do" +
					  " órgãos dirigentes com relação às suas atribui" +
					  " A prática cotidiana prova que o surgimento do" +
					  "ércio virtual apresenta tendências no sentido " +
					  " aprovar a manutenção dos índices pretendidos." +
					  "cima de tudo, é fundamental ressaltar que a co" +
					  "exidade dos estudos efetuados obstaculiza a ap" +
					  "ciação da importância do investimento em recic" +
					  "lagem técnica. O cuidado em identificar pontos" +
					  " críticos na crescente influência da mídia não" +
					  " pode mais se dissociar de todos os recursos f" +
					  "uncionais envolvidos. </div><br><br><br><br><br");
			
			resp.getWriter().println(sb.toString());
			
		}
		
		if(new Integer((String)req.getParameter("page"))== 2){
			
			//return page 2
			StringBuffer sb = new StringBuffer();
			sb.append("<!--page 2 --> <h3>PAGE 2 LOADED BY AJAX</h3>" +
					" <div> Caros amigos, a execução dos pontos do p" +
					"rograma auxilia a preparação e a composição da " +
					"gestão inovadora da qual fazemos parte. Desta m" +
					"aneira, o acompanhamento das preferências de co" +
					"nsumo pode nos levar a considerar a reestrutura" +
					"ção de alternativas às soluções ortodoxas. Toda" +
					"s estas questões, devidamente ponderadas, levan" +
					"tam dúvidas sobre se a crescente influência da " +
					"mídia estende o alcance e a importância do sist" +
					"ema de formação de quadros que corresponde às n" +
					"ecessidades. </div><br><br><br><br><br><br><br> ");
			
			resp.getWriter().println(sb.toString());
			
		}
		
		
		if(new Integer((String)req.getParameter("page"))== 3){
			
			//return page 3
			StringBuffer sb = new StringBuffer();
			sb.append("<!--page 3 --> <h3>PAGE 3 LOADED BY AJAX</h3>" +
					" <div> XDaros amigos, a execução dos pontos do p" +
					"rograma auxilia a preparação e a composição da " +
					"gestão inovadora da qual fazemos parte. Desta m" +
					"aneira, o acompanhamento das preferências de co" +
					"nsumo pode nos levar a considerar a reestrutura" +
					"ção de alternativas às soluções ortodoxas. Toda" +
					"s estas questões, devidamente ponderadas, levan" +
					"tam dúvidas sobre se a crescente influência da " +
					"mídia estende o alcance e a importância do sist" +
					"ema de formação de quadros que corresponde às n" +
					"ecessidades. </div><br><br><br><br><br><br><br> ");
			
			resp.getWriter().println(sb.toString());
			
		}
		
		
		
		if(new Integer((String)req.getParameter("page")) > 3){
			
			//No have more pages to load...
			resp.getWriter().println("");
			
		}
		
		
	}
}
