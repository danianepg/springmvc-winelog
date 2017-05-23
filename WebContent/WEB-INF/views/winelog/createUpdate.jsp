<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<c:url var="action" value="${formAction}"></c:url>

<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">
				${title}			
			</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">

				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">

							<f:form action="${action}" method="post" modelAttribute="wine"
								role="form">
								
								<f:input path="id" cssClass="hidden"/>

								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label>Name *</label>
											<f:input path="name" cssClass="form-control" />
										</div>
									</div>
									<div class="col-lg-6">
										<div class="form-group">
											<label>&nbsp;</label>
											<f:errors path="name" cssClass="alert alert-danger"></f:errors>
										</div>
										
									</div>
								</div>


								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label>Type</label>
											<f:input path="type" cssClass="form-control" />
										</div>
									</div>
									<div class="col-lg-6">&nbsp;</div>
								</div>

								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label>Winery</label>
											<f:input path="winery" cssClass="form-control" />
										</div>
									</div>
									<div class="col-lg-6">&nbsp;</div>
								</div>

								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label>Year</label>
											<f:input path="year" cssClass="form-control" />
										</div>
									</div>
									<div class="col-lg-6">
										<f:errors path="year" cssClass="alert alert-danger"></f:errors>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label>Country</label>
											<f:select path="country.id" cssClass="form-control">
												<f:option value="0">(Select an option)</f:option>
												<f:options items="${countries}" itemLabel="name" itemValue="id" />
											</f:select>
											
										</div>
									</div>
									<div class="col-lg-6">&nbsp;</div>
								</div>

								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label>Price</label>

											<div class="form-group input-group">
												<span class="input-group-addon"><i class="fa fa-usd"></i></span>
												<f:input path="price" cssClass="form-control" />
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<f:errors path="price" cssClass="alert alert-danger"></f:errors>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label>Grade</label>
											<f:input path="grade" cssClass="form-control" />
										</div>
									</div>
									<div class="col-lg-6">
										<f:errors path="grade" cssClass="alert alert-danger"></f:errors>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label>Image</label>
											<f:input path="image" cssClass="form-control" />
										</div>
									</div>
									<div class="col-lg-6">&nbsp;</div>
								</div>

								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label>Date</label>
											<f:input path="dateConsumption" cssClass="form-control" />
										</div>
									</div>
									<div class="col-lg-6">&nbsp;</div>
								</div>

								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label>Personal notes</label>
											<f:textarea path="personalNotes" cssClass="form-control" />
										</div>
									</div>
									<div class="col-lg-6">&nbsp;</div>
								</div>

								<div class="row">
									<div class="col-lg-12">
										<button type="submit" class="btn btn-primary">Confirm</button>
										<button type="reset" class="btn btn-default">Reset</button>
									</div>
								</div>
							</f:form>

						</div>
						<!-- /.col-lg-6 (nested) -->
					</div>
					<!-- /.row (nested) -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
</div>
<!-- /#page-wrapper -->
