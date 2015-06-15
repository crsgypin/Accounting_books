$(document).ready(function(){
	$(document).on("click", ".btn-show-ab", function () {


		$(".modal-title").text($(this).parent().parent().children("td.ab-col-desc").text());

/*
	 $.ajax({
	    // type: "GET",
	    // url: $(".btn-show-ab").attr('href')
	    // dataType: "JSON",
	    success: function(data) {

		var event_area=$('#event_area');
		$(".modal-title").text(ab['description']);
		var content = $(".modal-body").html();
		content = content.replace("consume_date",ab['consume_date']);
		content = content.replace("description",ab['description']);
		content = content.replace("cost",ab['cost']);
		content = content.replace("main_class",ab['main_class']);
		content = content.replace("subclass",ab['subclass']);
		content = content.replace("third_class",ab['third_class']);
		content = content.replace("consume_way",ab['consume_way']);
		content = content.replace("note",ab['note']);
		console.log(content);
		$(".modal-body").html(content);

	    }
	  });
*/
	});

	$('.btn-show-ab').on("ajax:success",function(event,ab){
		var event_area=$('#event_area');

		$(".modal-title").text(ab['description']);
		var content = $(".modal-body").html();
		content = content.replace("consume_date",ab['consume_date']);
		content = content.replace("description",ab['description']);
		content = content.replace("cost",ab['cost']);
		content = content.replace("main_class",ab['main_class']);
		content = content.replace("subclass",ab['subclass']);
		content = content.replace("third_class",ab['third_class']);
		content = content.replace("consume_way",ab['consume_way']);
		content = content.replace("note",ab['note']);
		console.log(content);
		$(".modal-body").html(content);
	});

});

