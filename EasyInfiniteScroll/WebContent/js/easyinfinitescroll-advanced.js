function pageLoad(){
		   	
		   	//posição do scroll	    tamanho da pagina      tamanho de cada scroolada
			aux = 0;	
				if($(window).scrollTop() == $(document).height() - $(window).height())
			    {
			        
			        $.ajax({  
			        	
			        url: url + "?page=" + page,
			        success: function(html)
			        {
			        if(!page==aux){	
			            if(html.toString().length>5)
			            {
			                $('#content').append(html);
			                page++;
			                console.debug(page);
			                aux = page;
			            }else
			            {
			                $('#loading').html('<span background-color=\"#CCC\">Não existem mais itens. | no have more itens</span>');
			            }
			        }else{
			        	
			        	$('#loading').html('<span background-color=\"#CCC\">Não existem mais itens. | no have more itens</span>');
			        }
			        
			        }
			        });
			    }
			}