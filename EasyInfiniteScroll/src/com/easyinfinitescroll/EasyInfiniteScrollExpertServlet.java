package com.easyinfinitescroll;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class EasyInfiniteScrollExpertServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");
		
		
		//page 1
		//Also something you can retrieve list of users in DAOGetUsersByPage(1),....
		if(new Integer((String)req.getParameter("page"))== 1){
			
			System.out.println(req.getParameter("name"));
			String name = req.getParameter("name");
			String session = req.getParameter("session");
			System.out.println("PARAMS SENDED : name -" + name + " ; SESSION - " + session );
			//return page 1
			StringBuffer sb = new StringBuffer();
			sb.append("<!--page 1 --> <h3>PAGE1 LOADED AJAX name "+name+"</h3> " +
					  "<h3 style='color:red'>SESSION " + session + " </h3>              "+
					  "<div> Por conseguinte, a valoriza��o d fatores" +
					  " subjetivos facilita a cria��o das posturas do" +
					  " �rg�os dirigentes com rela��o �s suas atribui" +
					  " A pr�tica cotidiana prova que o surgimento do" +
					  "�rcio virtual apresenta tend�ncias no sentido " +
					  " aprovar a manuten��o dos �ndices pretendidos." +
					  "cima de tudo, � fundamental ressaltar que a co" +
					  "exidade dos estudos efetuados obstaculiza a ap" +
					  "cia��o da import�ncia do investimento em recic" +
					  "lagem t�cnica. O cuidado em identificar pontos" +
					  " cr�ticos na crescente influ�ncia da m�dia n�o" +
					  " pode mais se dissociar de todos os recursos f" +
					  "uncionais envolvidos. </div><br><br><br><br><br");
			
			resp.getWriter().println(sb.toString());
			
		}
		
		if(new Integer((String)req.getParameter("page"))== 2){
			
			System.out.println(req.getParameter("name"));
			String name = req.getParameter("name");
			String session = req.getParameter("session");
			System.out.println("PARAMS SENDED : name -" + name + " ; SESSION - " + session );
			//return page 1
			StringBuffer sb = new StringBuffer();
			sb.append("<!--page 2 --> <h3>PAGE2 LOADED AJAX name "+name+"</h3> " +
					"<h3 style='color:red'>SESSION " + session + " </h3>  <div>        "+
					"rograma auxilia a prepara��o e a composi��o da " +
					"gest�o inovadora da qual fazemos parte. Desta m" +
					"aneira, o acompanhamento das prefer�ncias de co" +
					"nsumo pode nos levar a considerar a reestrutura" +
					"��o de alternativas �s solu��es ortodoxas. Toda" +
					"s estas quest�es, devidamente ponderadas, levan" +
					"tam d�vidas sobre se a crescente influ�ncia da " +
					"m�dia estende o alcance e a import�ncia do sist" +
					"ema de forma��o de quadros que corresponde �s n" +
					"ecessidades. </div><br><br><br><br><br><br><br> ");
			
			resp.getWriter().println(sb.toString());
			
		}
		
		
		if(new Integer((String)req.getParameter("page"))== 3){
			
			System.out.println(req.getParameter("name"));
			String name = req.getParameter("name");
			String session = req.getParameter("session");
			
			System.out.println("PARAMS SENDED : name -" + name + " ; SESSION - " + session );
			//return page 1
			StringBuffer sb = new StringBuffer();
			sb.append("<!--page 3 --> <h3>PAGE3 LOADED AJAX name "+name+"</h3> " +
					"<h3 style='color:red'>SESSION " + session + " </h3>  <div>        "+
					"rograma auxilia a prepara��o e a composi��o da " +
					"gest�o inovadora da qual fazemos parte. Desta m" +
					"aneira, o acompanhamento das prefer�ncias de co" +
					"nsumo pode nos levar a considerar a reestrutura" +
					"��o de alternativas �s solu��es ortodoxas. Toda" +
					"s estas quest�es, devidamente ponderadas, levan" +
					"tam d�vidas sobre se a crescente influ�ncia da " +
					"m�dia estende o alcance e a import�ncia do sist" +
					"ema de forma��o de quadros que corresponde �s n" +
					"ecessidades. </div><br><br><br><br><br><br><br> ");
			
			resp.getWriter().println(sb.toString());
			
		}
		
		
		
		if(new Integer((String)req.getParameter("page")) > 3){
			
			//No have more pages to load...
			resp.getWriter().println("");
			
		}
		
		
	}
}
