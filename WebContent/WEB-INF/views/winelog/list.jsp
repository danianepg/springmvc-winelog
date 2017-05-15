
<div id="page-wrapper" style="min-height: 296px;">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">My Logs</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Wines</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div id="dataTables-example_wrapper"
						class="dataTables_wrapper form-inline dt-bootstrap no-footer">
						<div class="row">
							
							<!-- 
							<div class="col-sm-6">
								<div class="dataTables_length" id="dataTables-example_length">
									<label>Show <select name="dataTables-example_length"
										aria-controls="dataTables-example"
										class="form-control input-sm"><option value="10">10</option>
											<option value="25">25</option>
											<option value="50">50</option>
											<option value="100">100</option></select> entries
									</label>
								</div>
							</div>  -->
							<div class="col-sm-12">
								<div id="dataTables-example_filter" class="dataTables_filter">
									<label>Search:<input type="search"
										class="form-control input-sm" placeholder=""
										aria-controls="dataTables-example"></label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<table width="100%"
									class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline"
									id="dataTables-example" role="grid"
									aria-describedby="dataTables-example_info" style="width: 100%;">
									<thead>
										<tr role="row">
											<th class="sorting_asc" tabindex="0"
												aria-controls="dataTables-example" rowspan="1" colspan="1"
												aria-sort="ascending"
												aria-label="Rendering engine: activate to sort column descending"
												style="width: 171px;">Wine</th>
												
											<th class="sorting" tabindex="0"
												aria-controls="dataTables-example" rowspan="1" colspan="1"
												aria-label="Browser: activate to sort column ascending"
												style="width: 207px;">Type</th>
												
											<th class="sorting" tabindex="0"
												aria-controls="dataTables-example" rowspan="1" colspan="1"
												aria-label="Platform(s): activate to sort column ascending"
												style="width: 188px;">Winery</th>
												
											<th class="sorting" tabindex="0"
												aria-controls="dataTables-example" rowspan="1" colspan="1"
												aria-label="Engine version: activate to sort column ascending"
												style="width: 148px;">Year</th>
												
											<th class="sorting" tabindex="0"
												aria-controls="dataTables-example" rowspan="1" colspan="1"
												aria-label="CSS grade: activate to sort column ascending"
												style="width: 108px;">Country</th>
												
											<th class="sorting" tabindex="0"
												aria-controls="dataTables-example" rowspan="1" colspan="1"
												aria-label="CSS grade: activate to sort column ascending"
												style="width: 108px;">Grade</th>
										</tr>
									</thead>
									<tbody>

										<tr class="gradeA odd" role="row">
											<td class="sorting_1">Gecko</td>
											<td>Firefox 1.0</td>
											<td>Win 98+ / OSX.2+</td>
											<td class="center">1.7</td>
											<td class="center">A</td>
											<td class="center">A</td>
										</tr>
										<tr class="gradeA even" role="row">
											<td class="sorting_1">Gecko</td>
											<td>Firefox 1.5</td>
											<td>Win 98+ / OSX.2+</td>
											<td class="center">1.8</td>
											<td class="center">A</td>
											<td class="center">A</td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
						
						<!-- 
						<div class="row">
							<div class="col-sm-6">
								<div class="dataTables_info" id="dataTables-example_info"
									role="status" aria-live="polite">Showing 1 to 10 of 57
									entries</div>
							</div>
							<div class="col-sm-6">
								<div class="dataTables_paginate paging_simple_numbers"
									id="dataTables-example_paginate">
									<ul class="pagination">
										<li class="paginate_button previous disabled"
											aria-controls="dataTables-example" tabindex="0"
											id="dataTables-example_previous"><a href="#">Previous</a></li>
										<li class="paginate_button active"
											aria-controls="dataTables-example" tabindex="0"><a
											href="#">1</a></li>
										<li class="paginate_button "
											aria-controls="dataTables-example" tabindex="0"><a
											href="#">2</a></li>
										<li class="paginate_button "
											aria-controls="dataTables-example" tabindex="0"><a
											href="#">3</a></li>
										<li class="paginate_button "
											aria-controls="dataTables-example" tabindex="0"><a
											href="#">4</a></li>
										<li class="paginate_button "
											aria-controls="dataTables-example" tabindex="0"><a
											href="#">5</a></li>
										<li class="paginate_button "
											aria-controls="dataTables-example" tabindex="0"><a
											href="#">6</a></li>
										<li class="paginate_button next"
											aria-controls="dataTables-example" tabindex="0"
											id="dataTables-example_next"><a href="#">Next</a></li>
									</ul>
								</div>
							</div>
						</div>  -->
					</div>
					<!-- /.table-responsive -->

				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
</div>

    	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>

