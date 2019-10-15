

<h2>WELLCOME TO POKEMON BROWSE CARD</h2>
<h3>CARDS INFORMATION</h3>



<script type="text/javascript">
	$(document).ready(function() {
		var table = $
				.ajax({
					type : "GET",
					url : "/pokemon/service/cards",
					dataType : "json",
					success : function(data) {
						$('#cards')
								.dataTable(
										{
											"data" : data,
											"columns" : [
												{
											         'targets': 0,
											         'searchable': false,
											         'orderable': false,
											         'className': 'dt-body-center',
											         'render': function (data, type, full, meta){
											             return '<input type="checkbox" name="id[]" value="' + $('<div/>').text(data).html() + '">';
											         }
											      },
													{
														"data" : "id"

													},
													{
														"data" : "name"
													},
													{
														"data" : "hp"
													},
													{
														"data" : "stage"
													},
													{
														"data" : "weakness"
													},
													{
														"data" : "resistance"
													},
													{
														"data" : "retreat"
													},
													{
														"data" : "rarity"
													},
													{
														"data" : "abilities"
													},
													{
														"data" : "price"
													},
													{

														//var id = $('#cards').children().children()[1].children[0].innerHTML;
														//"data" : "<a href="card/" + id + '>View</a>'"
														"data" : "id",
														"fnCreatedCell" : function(
																nTd, sData,
																oData, iRow,
																iCol) {
															$(nTd)
																	.html(
																	//"<a href='http://localhost:8080/pokemon/user/card/"+oData.id+"'>View</a>"
																	"<a href='http://localhost:8080/pokemon/user/viewCard2/"+oData.id+"'>View</a>");

														}
													},
													{

														//var id = $('#cards').children().children()[1].children[0].innerHTML;
														//"data" : "<a href="card/" + id + '>View</a>'"
														"data" : "id",
														"fnCreatedCell" : function(
																nTd, sData,
																oData, iRow,
																iCol) {
															$(nTd)
																	.html(
																			"<a href='http://localhost:8080/pokemon/user/delete/"+oData.id+"'>Delete</a>");
														}
													},
													{

														//var id = $('#cards').children().children()[1].children[0].innerHTML;
														//"data" : "<a href="card/" + id + '>View</a>'"
														"data" : "id",
														"fnCreatedCell" : function(
																nTd, sData,
																oData, iRow,
																iCol) {
															$(nTd)
																	.html(
																			"<a href='http://localhost:8080/pokemon/user/edit/"+oData.id+"'>Edit</a>");
														}
													}
											//{
											//"defaultContent": "<button>Click!</button>"
											//}
											]

										});

					},
					error : function(xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
					}
				});
		
		 $('#example-select-all').on('click', function(){
		      // Get all rows with search applied
		      var rows = table.rows({ 'search': 'applied' }).nodes();
		      // Check/uncheck checkboxes for all rows in the table
		      $('input[type="checkbox"]', rows).prop('checked', this.checked);
		   });
		 $('#example tbody').on('change', 'input[type="checkbox"]', function(){
		      // If checkbox is not checked
		      if(!this.checked){
		         var el = $('#example-select-all').get(0);
		         // If "Select all" control is checked and has 'indeterminate' property
		         if(el && el.checked && ('indeterminate' in el)){
		            // Set visual state of "Select all" control
		            // as 'indeterminate'
		            el.indeterminate = true;
		         }
		      }
		   });
		
		 $('#button').click(function(e){
			   var form = this;

			   // Iterate over all checkboxes in the table
			   $('input[type="checkbox"]').each(function(){
			      // If checkbox doesn't exist in DOM
			      if(!$.contains(document, this)){
			         // If checkbox is checked
			         if(this.checked){
			            // Create a hidden element
			            $(form).append(
			               $('<input>')
			                  .attr('type', 'hidden')
			                  .attr('name', this.name)
			                  .val(this.value)
			            );
			            var data = $('input[type="checkbox"]');
			            alert(data);
			         }
			      }
			   });
			   
			  // var data = $('input[type="checkbox"]').serialize();
				// alert(data);
			   
				 $('#cards tbody').on( 'click', '.checkbox', function () {
					 if(this.checked==true)
					 {
					 alert( table.row( this.closest('tr') ).data().id );
					 }
					 } );
			});
		
		
	});
	

	/*
	 $('#cards').on('click', 'button', function (e) {
	        e.preventDefault();
	      var id =  $(this).parent().parent().find("id").text;
	    // var id = $(this)[0];
	     //var id = $('#cards').row( $(this).parents('tr') ).data()
	        alert( " Remove Card: " + id);
	        } );	 
	 */

	//Define a fuonction to write all Users into a table row

</script>


<table class = "table table-responsive" id="cards" width="100%" border="1">
	<thead>
		<tr style="background-color: #A0A0A0">
			<th><input type="checkbox" name="select_all" value="1" id="example-select-all"></th>

			<th><label>CARD ID</label></th>
			<th><label>NAME</label></th>
			<th><label>HP</label></th>
			<th><label>STAGE</label></th>
			<th><label>WEAKNESS</label></th>
			<th><label>RESISTANCE</label></th>
			<th><label>RETREAT</label></th>
			<th><label>RARITY</label></th>
			<th><label>ABILITIES</label></th>
			<th><label>PRICE</label></th>
			<th><label>VIEW DETAIL</label></th>
			<th><label>DELETE</label></th>
			<th><label>EDIT</label></th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<p>
	<button id="button">Compare</button>
</p>
<pre id="example-console">
</pre>

<a href="../addcard" class="btn btn-primary">ADD MORE CARD </a>
<a
	href="../homepage{sessionScope.session.userName}&{sessionScope.session.password}" class="btn btn-success">HOME
	PAGE</a>
