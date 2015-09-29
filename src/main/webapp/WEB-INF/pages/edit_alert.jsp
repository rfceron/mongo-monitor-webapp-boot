<%@ include file="/WEB-INF/pages/includes/header.jsp" %>

<%@ include file="/WEB-INF/pages/includes/top_bar.jsp" %>

<%@ include file="/WEB-INF/pages/includes/menus.jsp" %>	

<%@ taglib tagdir="/WEB-INF/tags" prefix="dash" %>
	
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
          
          	<%@ include file="/WEB-INF/pages/includes/page_header.jsp" %>        
          
			<div class="row">			
				<div class="col-lg-12">			
					<section class="panel">
                        <header class="panel-heading">
                        	${title}
                        	<div style="font-size: 12px">${description}</div>
                   	  	</header>  
						<div class="panel-body">
							<form:form id="form_sample_1" method="POST" action="${BASE_URL}/alerts/save" modelAttribute="alert" class="form-horizontal">
								<dash:form_errors />
								<c:if test="${not empty alert}">
									<form:hidden path="id"/>
								</c:if>
								<div class="form-body">						
									<div class="form-group">
										<form:label path="field" class="col-md-3 control-label">Field<span class="required">*</span></form:label>
										<div class="col-md-5">
											<form:select path="field" class="form-control m-bot15">
												<form:option value="" label="Select One" />
													<c:forEach var="item" items="${fields}">
                  										<form:option value="${item}" ><spring:eval expression="item.text"/></form:option>
              										</c:forEach>
											</form:select>
										</div>
									</div>							
									<div class="form-group">
										<form:label path="operation" class="col-md-3 control-label">Operation<span class="required">*</span></form:label>
										<div class="col-md-5">
											<form:select path="operation" class="form-control m-bot15">
												<form:option value="" label="Select One" />
													<c:forEach var="item" items="${operations}">
                  										<form:option value="${item}" ><spring:eval expression="item.text"/></form:option>
              										</c:forEach>
											</form:select>
										</div>
									</div>										
									<div class="form-group">
										<form:label path="value" class="col-md-3 control-label">Value<span class="required">*</span></form:label>
										<div class="col-md-5">
											<form:input path="value" class="form-control" required="required"/>
										</div>
									</div>										
									<div class="form-group">
										<form:label path="recipientList" class="col-md-3 control-label">Recipient List</form:label>
										<div class="col-md-5">
											<form:input path="recipientList" class="form-control"/>
										</div>
									</div>								
									<div class="form-group">
										<form:label path="active" class="col-md-3 control-label">Active</form:label>
										<div class="col-md-5">
											<form:checkbox path="active"  class="form-control" style="width: 20px"/>
										</div>
									</div>		
									<form:button class="btn btn-primary">
										<i class="fa fa-save fa-fw fa-lg"></i> Save</form:button>
									<a class="btn btn-default" href="${BASE_URL}/alerts/list">Cancel</a>
								</div>
							</form:form>
						</div>
                    </section> 
				</div>
			</div>
          </section>
      </section>
      <!--main content end-->		
<%@ include file="/WEB-INF/pages/includes/footer.jsp" %>
