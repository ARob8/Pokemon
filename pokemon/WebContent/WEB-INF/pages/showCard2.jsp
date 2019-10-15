

<h2>Browse Pokémon Cards</h2>
<h3>Card Information</h3>



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

														"data" : "id",
														"fnCreatedCell" : function(
																nTd, sData,
																oData, iRow,
																iCol) {
															$(nTd)
																	.html(
																	"<a href='../user/viewCard2/"+oData.id+"'>View</a>");

														}
													},
													{

														"data" : "id",
														"fnCreatedCell" : function(
																nTd, sData,
																oData, iRow,
																iCol) {
															$(nTd)
																	.html(
																			"<a href='../user/delete/"+oData.id+"'>Delete</a>");
														}
													},
													{

														"data" : "id",
														"fnCreatedCell" : function(
																nTd, sData,
																oData, iRow,
																iCol) {
															$(nTd)
																	.html(
																			"<a href='../user/edit/"+oData.id+"'>Edit</a>");
														}
													}
											]

										});

					},
					error : function(xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
					}
				});
		
		

		
		
	});
	

</script>


<table class = "table table-responsive" id="cards" width="100%" border="1">
	<thead>
		<tr style="background-color: #A0A0A0">
			

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



<a href="../user/addcard" class="btn btn-primary">Add more cards </a>
<a
	href="../user/homepage{sessionScope.session.userName}&{sessionScope.session.password}" class="btn btn-success">Home page</a>
