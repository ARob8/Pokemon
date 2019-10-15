

<h2>WELLCOME TO POKEMON BROWSE CARD</h2>
<h3>CARDS INFORMATION</h3>


<script type="text/javascript">
	function getCards() {
		$
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
													}
													
													]
													

										});

					},
					error : function(xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
					}
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
	}

	//Define a fuonction to write all Users into a table row

	$(document).ready(getCards);
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
			
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<a href="../user/addcard" class="btn btn-primary">ADD MORE CARD </a>
<a
	href="../user/homepage{sessionScope.session.userName}&{sessionScope.session.password}" class="btn btn-success">HOME
	PAGE</a>
