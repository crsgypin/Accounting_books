$(document).on("click", ".btn-show-ab", function () {


	$(".modal-title").text($(this).parent().parent().children("td.ab-col-desc").text());

	var content = $(".modal-body").html();
	content = content.replace("consume_date",$(this).parent().parent().children("td.ab-col-date").text());
	// content = content.replace("description" ,$(this).parent().parent().children("td.ab-col-desc").text());
	content = content.replace("cost"		,$(this).parent().parent().children("td.ab-col-cost").text());
	content = content.replace("main_class"	,$(this).parent().parent().children("td.ab-col-main").text());
	content = content.replace("subclass"	,$(this).parent().parent().children("td.ab-col-sub").text());
	content = content.replace("third_class"	,$(this).parent().parent().children("td.ab-col-third").text());
	content = content.replace("consume_way"	,$(this).parent().parent().children("td.ab-col-consume").text());
	content = content.replace("note"		,$(this).parent().parent().children("td.ab-col-note").text());

	// console.log(content);
	$(".modal-body").html(content);

	 // console.log($(this).parent().children("div.content").text());
     // console.log($(this).parent().parent().attr("class"));
     // console.log($(this).parent().parent().children());     
     // console.log($(this).parent().parent().html());
     // $('#addBookDialog').modal('show');

});


