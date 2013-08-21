<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Easy Infinite Scroll</title>

<style>

	/*demo page css*/
	body{ font: 82.5% "Trebuchet MS", sans-serif; margin: 50px;}
	.demoHeaders { margin-top: 2em; }
	#dialog_link {padding: .4em 1em .4em 20px;text-decoration: none;position: relative;}
	#dialog_link span.ui-icon {margin: 0 5px 0 0;position: absolute;left: .2em;top: 50%;margin-top: -8px;}
	ul#icons {margin: 0; padding: 0;}
	ul#icons li {margin: 2px; position: relative; padding: 4px 0; cursor: pointer; float: left;  list-style: none;}
	ul#icons span.ui-icon {float: left; margin: 0 4px;}
	fieldset  {
		
		-webkit-border-radius: 30px;
		-moz-border-radius: 30px;
		border-radius: 30px;
	}
</style>
</head>

<body>
	
	<div id="exemplo1">
		<h3>Usage : Simple Mode</h3>
	
		<p>
			In simple mode , you can use , direct pages to load the content in the page root, you can set
			page you need, and/or page start , and this variable is incremented in every call in the document.
			This vars need be Global vars.
		</p>
		<p>Demo : <a href="exemplo1.html">Here</a></p>
		
		<br><br>
		
		<fieldset>
		<pre>
			<font color="green">&lt;body&gt;</font>
			
			<font color="green">&lt;script&gt;</font>
			
				<font color="green">//here you declare Global vars , in future use in call to function plugin</font>
				var url   = <font color="blue">"myPage2.html"</font>;
				
				
			<font color="green">&lt;script/&gt;</font>
			
			<font color="green">&lt;div <font color="purple">id=</font><font color="blue">'content'</font>&gt;	</font>
				
				<!-- Content -->
				bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla...
				(you need content to minimal scrooler page )
				
			
			<font color="green">&lt;div/&gt;</font>	
			
		
			
			<font color="green">&lt;script <font color="purple">type=</font><font color="blue">"text/javascript"</font> <font color="purple">src=</font><font color="blue">'easyinfinitescroll-<font color="red">simple.js</font>'</font>&gt;</font><font color="green">&lt;script&gt;</font>
			
			<font color="green">&lt;script&gt;</font>
			
			$(window).scroll(function()
			{
				console.debug( <font color="blue">"page Scrool Active"</font>);
				
				<font color="green">//when scroll end the page call function</font>
				pageLoad(url);
			});
			
			<font color="green">&lt;script/&gt;</font>
			
			<font color="green">&lt;/body&gt;</font>
		</pre>
		</fieldset>
	
	
	</div>
	
	<br><br><br><br>
	
	<div id="exemplo2">
		<h3>Usage : Advanced Mode</h3>
	
		<p>
			In advanced mode you can use the var page , this you can use to content with many pages, the function
			create increase page just send your var.
		</p>
		<p>Demo : <a href="exemplo2.html">Here</a></p>
		
		<br><br>
		
		<fieldset>
		<pre>
			<font color="green">&lt;body&gt;</font>
			
			<font color="green">&lt;script&gt;</font>
			
				<font color="green">//here you declare Global vars , in future use in call to function plugin</font>
				var url   = <font color="blue">"MyServlet"</font>;
				
				<font color="green">//page start 0</font>
				var page  = <font color="blue">0</font>;
				
				<font color="green">// The url sended in every call to be like</font>
				<font color="green">//  -> MyServlet?page=0</font>
				
				
			<font color="green">&lt;script/&gt;</font>
			
			<font color="green">&lt;div <font color="purple">id=</font><font color="blue">'content'</font>&gt;	</font>
				
				<!-- Content -->
				bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla...
				(you need content to minimal scrooler page )
				
			
			<font color="green">&lt;div/&gt;</font>	
			
		
			
			<font color="green">&lt;script</font> <font color="purple">type=</font><font color="blue">"text/javascript"</font> <font color="purple">src=</font><font color="blue">'easyinfinitescroll-<font color="red">advanced.js</font>'</font>&gt;<font color="green">&lt;script&gt;</font>
			
			<font color="green">&lt;script&gt;</font>
			
			$(window).scroll(function()
			{
				console.debug( <font color="blue">"page Scrool Active"</font>);
				
				<font color="green">//when scroll end the page call function</font>
				pageLoad();
			});
			
			<font color="green">&lt;script/&gt;</font>
			
			<font color="green">&lt;/body&gt;</font>
		</pre>
		</fieldset>
	
	
	</div>
	
	
	
	
	<div id="exemplo3">
		<h3>Usage : Expert Mode</h3>
	
		<p>
			In Expert Mode you can use all vars in the plugin, you can set page start, and parameters in url
			, in many cases you need make special searchs with many parameters , data and others , this you 
			can send in var params, this var can changed in every call, same the others vars (url,page and params)
		</p>
		<p>Demo : <a href="exemplo3.html">Here</a></p>
		
		<br><br>
		
		<fieldset>
		<pre>
			<font color="green">&lt;body&gt;</font>
			
			<font color="green">&lt;script&gt;</font>
			
				<font color="green">//here you declare Global vars , in future use in call to function plugin</font>
				<font color="purple">var</font> url   = <font color="blue">"MyServlet"</font>;
				
				<font color="green">//page start 0</font>
				<font color="purple">var</font> page  = <font color="blue">0</font>;
				
				<font color="green">//params if you need to be concat after page sect in url</font>
				<font color="purple">var</font> params  = <font color="blue">'&name=Felps&address=anyplace&session=first</font>;
				
				
				<font color="purple">var</font> saveInitialPage = page;
				<font color="purple">var</font> initialText = "";
				
				<font color="purple">function</font> updateVarsAndCleanDiv(session){
					
					<font color="green">//get content simple</font>
					<font color="green">//when click in a new Session, the Div content</font>
					<font color="green">//to be back, initial format, this function provided</font>
					<font color="green">//this, in initialText, have the text init in page load</font>
					<font color="green">//before load, the first innerHTML make a clean Div content</font>
					<font color="green">//to remove the loads scrolleds previous.</font>
					<font color="green">//the params split , have the update the term session, sended by </font>
					<font color="green">//onclick in &lt;a href&gt; .</font>
					<font color="green">//loading need back to initial format a gif image.</font>
					
					<font color="green">//get the initial text</font>
					initialText = document.getElementById("subcontent").innerHTML;
					
					<font color="green">//clean div loaded previously</font>
					document.getElementById("content").innerHTML = '';
					
					<font color="green">//update de param session to second</font>
					params = params.split("session=")[0] + "session="+session;
					
					<font color="green">//the div content , have now the initial text</font>
					$("#content").html("&lt;div id='subcontent'&gt;"+initialText+"&lt;/div&gt;");
					
					<font color="green">//var global page , receive the your initial page start</font>
					page = saveInitialPage;
					
					<font color="green">//the image loading , back to page</font>
					document.getElementById("loading").innerHTML = "&lt;img src='img/loading.gif'/&gt;";
				}	
				
				
				
				
				<font color="green">// The url sended in every call to be like</font>
				<font color="green">//  -> MyServlet?page=0&name=Felps&address=anyplace&session=first</font>
				
				
			<font color="green">&lt;script/&gt;</font>
			
			<font color="green">&lt;table&gt;</font>
				 <font color="green">&lt;tr&gt;</font>
					<font color="green">&lt;td&gt;&lt;a</font> <font color="purple">href=</font>"#" <font color="purple">onclick=</font><font color="blue">"updateVarsAndCleanDiv('first')"</font>&gt; | Session First |<font color="green">&lt;/a&gt;&lt;/td&gt;</font>
					<font color="green">&lt;td&gt;&lt;a</font> <font color="purple">href=</font>"#" <font color="purple">onclick=</font><font color="blue">"updateVarsAndCleanDiv('secnd')"</font>&gt; | Session Second|<font color="green">&lt;/a&gt;&lt;/td&gt;</font>
					<font color="green">&lt;td&gt;&lt;a</font> <font color="purple">href=</font>"#" <font color="purple">onclick=</font><font color="blue">"updateVarsAndCleanDiv('third')"</font>&gt; | Session Third |<font color="green">&lt;/a&gt;&lt;/td&gt;</font>
				<font color="green">&lt;/tr&gt;</font>
			<font color="green">&lt;/table&gt;</font>
			
			
			
			<font color="green">&lt;div <font color="purple">id=</font><font color="blue">'content'</font>&gt;	</font>
				
				<!-- Content -->
				bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla...
				(you need content to minimal scrooler page )
				
			
			<font color="green">&lt;div/&gt;</font>	
			
		
			
			<font color="green">&lt;script <font color="purple">type=</font><font color="blue">"text/javascript"</font> <font color="purple">src=</font><font color="blue">'easyinfinitescroll-<font color="red">expert.js</font>'</font>&gt;</font><font color="green">&lt;script&gt;</font>
			
			<font color="green">&lt;script&gt;</font>
			
			$(window).scroll(function()
			{
				console.debug( <font color="blue">"page Scrool Active"</font>);
				
				<font color="green">//when scroll end the page call function</font>
				pageLoad();
			});
			
			<font color="green">&lt;script/&gt;</font>
			
			<font color="green">&lt;/body&gt;</font>
		</pre>
		</fieldset>
	
	
	</div>
	
	

</body>
</html>