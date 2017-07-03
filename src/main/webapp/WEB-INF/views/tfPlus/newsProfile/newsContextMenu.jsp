<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 소식 컨텍스트 메뉴 부분 -->

									<!-- 컨텍스트 메뉴 처리 시작 -->
		        					<div class="subMenuDiv">
		        						<img id="img_size" src="${newsProfileUpPath}/${dto.photo}" alt="Alt text"/>
		        						<c:if test="${dto.profileId != sessionScope.memberDTO.id}">
		        							<ul class="subMenu">
												<li>
													<c:choose>
														<c:when test="${followList.size()==0}">
															<c:set var="follow" value="false"/>
															<a href="tfPlusNewsFollowInsert?profileNum=${dto.profileNum}&id=${sessionScope.memberDTO.id}">
																<img id="img_center" src="resources/tfPlus/images/default/follow.JPG">
															</a>
														</c:when>
														<c:otherwise>
															<c:forEach var="fdto" items="${followList}">
																	<c:choose>
																		<c:when test="${dto.profileNum==fdto.newsfollowNum && fdto.newsfollowId==sessionScope.memberDTO.id}">
																			<c:set var="follow" value="true"/>
																			<a href="tfPlusNewsFollowDelect?profileNum=${dto.profileNum}&newsfollowPK=${fdto.newsfollowPK}">
																				<img id="img_center" src="resources/tfPlus/images/default/unfollow.JPG">
																			</a>
																		</c:when>
																		<c:otherwise>
																			<c:set var="follow" value="false"/>
																			<a href="tfPlusNewsFollowInsert?profileNum=${dto.profileNum}&id=${sessionScope.memberDTO.id}">
																				<img id="img_center" src="resources/tfPlus/images/default/follow.JPG">
																			</a>
																		</c:otherwise>
																	</c:choose>
															</c:forEach>
														</c:otherwise>
													</c:choose>
												</li>
												<li><a href="newsProfileEmail">메일 보내기</a></li>
											</ul>
		        						</c:if>
		        						<c:if test="${dto.profileId == sessionScope.memberDTO.id}">
		        							<ul class="subMenu">
												<li><a href="#">수정 하기</a></li>
												<li><a href="newsProfileDelete?profileNum=${dto.profileNum}">삭제 하기</a></li>
											</ul>
		        						</c:if>
		        					</div>
		        					<!-- 컨텍스트 메뉴 처리 끝 -->