$(document).on("click", ".btn-show-ab", function () {
     var myBookId = $(this).data('id');



	var date = $(this).parent().parent().children("td.ab_col2").text();
	var description = $(this).parent().parent().children("td.ab_col3").text();
	var cost = $(this).parent().parent().children("td.ab_col4").text();
	var mc = $(this).parent().parent().children("td.ab_col5").text();
	var sc = $(this).parent().parent().children("td.ab_col6").text();
	var tc = $(this).parent().parent().children("td.ab_col7").text();
	var cw = $(this).parent().parent().children("td.ab_col8").text();
	var note = $(this).parent().parent().children("td.ab_col9").text();

	var content = "<table class='table'>"
			
	content +=	"<tr><td>消費日期 </td><td>" +  consume_date + "</td></tr>";
				<tr><td>描述		</td><td>  description  </td></tr>;
				<tr><td>費用    </td><td>  cost 			</td></tr>;
				<tr><td>主項目   </td><td>  main_class	</td></tr>;
				<tr><td>副項目   </td><td>  subclass		</td></tr>;
				<tr><td>其他項目  </td><td>  third_class	</td></tr>;
				<tr><td>消費方式  </td><td>  consume_way	</td></tr>;
				<tr><td>備註     </td><td>  note			</td></tr>";
			</table>



	content = content.replace("consume_date",date)
	content = content.replace("description",description)
	content = content.replace("cost",cost)
	content = content.replace("main_class",mc)
	content = content.replace("subclass",sc)
	content = content.replace("third_class",tc)
	content = content.replace("consume_way",cw)
	content = content.replace("note",note)

	// console.log(content);
	$(".modal-body").html(content);

	 // console.log($(this).parent().children("div.content").text());
     // console.log($(this).parent().parent().attr("class"));
     // console.log($(this).parent().parent().children());     
     // console.log($(this).parent().parent().html());
     // $('#addBookDialog').modal('show');

});


