<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="keywords" content="" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<script type="text/javascript"
	src='<c:url value="/resources/js/readMoreFunctions.js"/>'></script>
<!-- Title -->
<title>Timeline</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href='<c:url value="/resources/img/favicon.png"/>'>
<!-- CSS -->
<link rel='stylesheet'
	href='<c:url value="/resources/css/custom.css" />' type='text/css'
	media='all' />
<link rel='stylesheet'
	href='<c:url value="/resources/css/bootstrap.css" />' type='text/css'
	media='all' />
<link rel='stylesheet' href='<c:url value="/resources/css/style.css"/>'
	type='text/css' media='all' />



<!-- JS -->
<script type='text/javascript'
	src='<c:url value="/resources/js/jquery-2.1.4.min.js" ></c:url>'></script>
<script type="text/javascript"
	src='<c:url value="/resources/js/js-date-format.js"/>'></script>

<script type='text/javascript'
	src='<c:url value="/resources/js/bootstrap.js?ver=4.1.7"/>'></script>
<script type='text/javascript'
	src='<c:url value="/resources/js/responsiveslides.js?ver=4.1.7"/>'></script>
<script type='text/javascript'
	src='<c:url value="/resources/js/modernizr.js?ver=4.1.7"/>'></script>

<script type='text/javascript'
	src='<c:url value="/resources/js/custom.js?ver=4.1.7"/>'></script>

<script type="text/javascript"
	src='<c:url value="/resources/js/viewdetail.js"/>'></script>

<script type="text/javascript"
	src='<c:url value="/resources/js/item-add.js"/>'></script>

<script type="text/javascript"
	src='<c:url value="/resources/js/selectchn.js"/>'></script>

<script type="text/javascript"
	src='<c:url value="/resources/js/jquery.cookie.js"/>'></script>	
	
</head>
<body class="home blog">


	<!-- PARAMETERS -->
	<c:set var="textLoadMore" value="Cũ hơn"></c:set>
	<c:set var="dtItemLink" value="${detailItem.link}"></c:set>
	<script>
		var previousPoint;
		var nextPoint;
	</script>

	<script>
		jQuery(document).ready(function() {
			previousPoint = "${items[fn:length(items)-1].seourl }";
			nextPoint = "${items[0].seourl}";
			$('#mainModal').on('shown.bs.modal', function() {
				document.body.style.overflow = 'hidden';
				$('#modalContent').scrollTop(0);
			}).on('hidden.bs.modal', function() {
				document.body.style.overflow = 'scroll';
			})
		});
	</script>



	<div class="">
		<img id="background" class="main-listing-bg"
			src='<c:url value="/resources/img/background.jpg"/>' alt="">
	</div>
	<section class="main-listing">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div id="loadNewButton" class="cd-timeline-block load-more-block"
						style="margin-bottom: 100px">
						<div class="cd-timeline-year">
							<h2>
								<a href="javascript:;" onclick="getNext()"><c:out
										value="Refresh"></c:out></a>

							</h2>
						</div>
						<!-- cd-timeline-img -->
					</div>


					<section id="cd-timeline" class="cd-container">




						<!-- cd-timeline-block -->


						<c:forEach var="item" items="${items}" varStatus="counter">
							<c:if test="${counter.count%2==0 }">
								<div id="post-1"
									class="post-40 post type-post status-publish format-status has-post-thumbnail hentry category-status tag-status-2 tag-twitter cd-timeline-block even"
									style="min-height: 250px">
							</c:if>
							<c:if test="${counter.count%2!=0 }">
								<div id="post-1"
									class="post-40 post type-post status-publish format-status has-post-thumbnail hentry category-status tag-status-2 tag-twitter cd-timeline-block"
									style="min-height: 250px">
							</c:if>

							<div class="cd-timeline-img">
								<h2 style="padding-top: 8px">${fn:substring(item.addDate, 10, 16)}</h2>
							</div>
							<!-- cd-timeline-img -->
							<div class="cd-timeline-content ">
								<div class="cd-content clearfix">
									<div class="content-padding">
										<a data-toggle="modal" data-target=".bs-example-modal-lg"
											href="javascript:;" class="post-title"
											onclick="readMore('${item.link}')"><h2>${item.title }</h2></a>


										<div class="post-content">
											<p>${item.desWithoutImage }</p>
										</div>
										<button class="btn btn-primary btn-default cd-read-more"
											data-toggle="modal" data-target=".bs-example-modal-lg"
											onclick="readMore('${item.link}')">Read more</button>
										<div class="clearfix"></div>
										<div class="cd-author">
											<img src=${item.smallImage
												}
												class="media-object img-responsive" alt=""
												style="width: 150px" />
										</div>
									</div>
								</div>
							</div>
							<!-- cd-timeline-content -->
				</div>
				<!-- cd-timeline-block -->
				</c:forEach>


				<div id="loadMoreButton" class="cd-timeline-block load-more-block">
					<div class="cd-timeline-year">
						<h2>
							<a href="javascript:;" onclick="getPrevious()"><c:out
									value="${textLoadMore}"></c:out></a>

						</h2>
					</div>
					<!-- cd-timeline-img -->
				</div>
				<!-- cd-timeline-block -->
	</section>
	</div>
	</div>
	</div>


	</section>



	<!-- THIS ARER FOR SELECT CHANNEL -->
	<img id="selectchn-icon" onclick="selectchnPopupDisplay()"
		alt="SELECT CHANNEL"
		src='<c:url value="/resources/img/selectchn-icon.png"/>'>



	<!-- Main modal -->
	<div id="mainModal" class="modal fade bs-example-modal-lg"
		tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
		<div class="modal-dialog modal-lg">
			<div id="iconCloseBound">
				<img id="icon-close" alt="Close"
					src='<c:url value="/resources/img/close-icon.png"/>'
					onclick="hideModal()">
			</div>
			<div id="modalContent" class="modal-content"
				style="min-height: 70vh; overflow: auto; max-height: 90vh; padding: 4vh;">

			</div>

		</div>
	</div>
	</div>


	<c:set var="abc" value="${vnexpressCategory }"></c:set>
	<!-- Select Channel modal -->
	<div id="selectChannelModal" class="modal fade " tabindex="-1"
		role="dialog" aria-labelledby="myLargeModalLabel">
		<div class="modal-dialog modal-lg">
			<div id="iconCloseBound">
				<img id="icon-close" alt="Close"
					src='<c:url value="/resources/img/close-icon.png"/>'
					onclick="hideModal()">
			</div>
			<div id="selectChannelModalContent" class="modal-content"
				style="min-height: 70vh; overflow: auto; max-height: 90vh; padding: 4vh;">
				<c:forEach var="cateItem" items="${vnexpressCategory}">
					<div class="[ form-group ]">
						<input class="checkbox-chn" name="fancy-checkbox-default" id="fancy-checkbox-${cateItem}-vnexpress"
							value="${cateItem}" autocomplete="off" type="checkbox">
						<div class="[ btn-group ]">
							<label style="border-radius: 10px 0px;"
								for="fancy-checkbox-${cateItem}-vnexpress" class="[ btn btn-default">
								<span class="[ glyphicon glyphicon-ok ]"></span> <span>&nbsp;</span>
							</label> <label style="border-radius: 0px 0px 0px 5px;"
								for="fancy-checkbox-${cateItem}-vnexpress" class="[ btn btn-default active ]">
								${cateItem }</label>
						</div>
					</div>
				</c:forEach>
				<button onclick="saveCookie()">Save cookie</button>
			</div>

		</div>
	</div>
	</div>







	<script>
		function getNext() {
			jQuery.ajax({
				type : "GET",
				url : "getNext",
				data : {
					nextPoint : nextPoint
				},
				success : function(data) {
					if (data.length === 0) {
						return;
					}
					addItemsToHead(data);
				},
				error : function(data) {
					alert(data)
				}
			});

		}

		function getPrevious() {
			jQuery.ajax({
				type : "GET",
				url : "getPrevious",
				data : {
					previousPoint : previousPoint
				},
				success : function(data) {
					if (data.length === 0) {
						return;
					}
					addItemsToTail(data);
				},
				error : function(data) {
					alert(data)
				}
			});
		}

		function addItemsToHead(newItems) {
			for (var i = 0; i < newItems.length; i++) {
				addOneItemToHead(newItems[i], i);
			}
			nextPoint = newItem[0].seourl;
		}

		function hideModal() {
			jQuery("#mainModal").modal('hide');
		}

		function showModal() {
			jQuery("#mainModal").modal('show');
		}

		$(document).ready(function() {

			console.log("ViewDetails");
			var url = "${dtItemLink}";
			handleDetailItem(url);
		});
	</script>