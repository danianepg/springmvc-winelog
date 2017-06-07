<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="actionEdit" value="${actionEdit}"></c:url>
<c:url var="actionDelete" value="${actionDelete}"></c:url>

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
							</div>  
							<div class="col-sm-12">
								<div id="dataTables-example_filter" class="dataTables_filter">
									<label>Search:<input type="search"
										class="form-control input-sm" placeholder=""
										aria-controls="dataTables-example"></label>
								</div>
							</div>-->
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
												>Wine</th>
												
											<th class="sorting" tabindex="0"
												aria-controls="dataTables-example" rowspan="1" colspan="1"
												aria-label="Browser: activate to sort column ascending"
												>Type</th>
												
											<th class="sorting" tabindex="0"
												aria-controls="dataTables-example" rowspan="1" colspan="1"
												aria-label="Platform(s): activate to sort column ascending"
												>Winery</th>
												
											<th class="sorting" tabindex="0"
												aria-controls="dataTables-example" rowspan="1" colspan="1"
												aria-label="Engine version: activate to sort column ascending"
												>Year</th>
												
											<th class="sorting" tabindex="0"
												aria-controls="dataTables-example" rowspan="1" colspan="1"
												aria-label="CSS grade: activate to sort column ascending"
												>Country</th>
												
											<th class="sorting" tabindex="0"
												aria-controls="dataTables-example" rowspan="1" colspan="1"
												aria-label="CSS grade: activate to sort column ascending"
												>Grade</th>
												
											<th class="" tabindex="0"
												rowspan="1" colspan="1"
												>Options</th>
										</tr>
									</thead>
									<tbody>
									
									<c:if test="${!empty wineList}">
										<c:forEach items="${wineList}" var="wine" varStatus="loop">
											
											<tr class="gradeA ${loop.index % 2 == 0 ? 'even' : 'odd'}" role="row">
												<td class="sorting_1">${wine.name}</td>
												<td>${wine.type}</td>
												<td>${wine.winery}</td>
												<td>${wine.year}</td>
												<td>${wine.country.name}</td>
												<td>${wine.grade}</td>
												<td style="text-align: center;">
													
													<a href="${actionEdit}?id=${wine.id}">
											          <span class="glyphicon glyphicon-edit"></span>
											        </a>
											        
											        <a href="${actionDelete}/${wine.id} ">
											          <span class="glyphicon glyphicon-trash"></span>
											        </a>
											        
												</td>
											</tr>
											
										</c:forEach>
									</c:if>
										
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

