<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<%@page import="com.matrimony.constants.Constants"%>
<%@page import="com.matrimony.vo.enums.UserAttributes"%>

<jsp:include page="no-cache.jsp" />

<style>
.page
{	
	background-color:transparent;
}
.Kundali_BG {
	background:url("/images/kundali.jpg") no-repeat scroll center top transparent;
	height:450px;
	text-align:left;
	width:100%;
}

.SmallInputBox
{
	font:normal normal normal 13px/13px Arial;
	color:#333333;
	text-decoration:none;
	width:189px;
	height:20px;
	padding-left:3px;
	background-color:#FFFFFF;
	border:1px solid #B1B1B1;	
}
.SmallInputBox
{
	width:100px;
}
</style>

<table width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td class="contents-header">
			Horoscope
		</td>
		<td class="contents-header" align="right" style="padding-right: 10px">
			<u>Profile ID:</u>
			<bean:write name="userForm" property="user.id" />
		</td>
	</tr>
	<tr>
		<td class="contents" colspan="2">
			<logic:notEmpty name="<%=Constants.SAVE_OK_MSG%>" scope="request">
				<div id="SuccessMessage" class="SuccessMessage" style="padding-top: 10px; padding-bottom: 10px;">
					<bean:write name="<%=Constants.SAVE_OK_MSG%>"/>
				</div>
			</logic:notEmpty>
			<html:form action="/MyProfile.do" method="post">
				<div>
					<table width="849" height="100%" cellspacing="0" cellpadding="0" border="0" align="left">
						<tbody>
						<tr>
						    <td width="849" valign="top" class="page" colspan="2">
						        <div style="padding:10px;">
									<div style="padding-bottom:10px;padding-top:0px;">			
										<div style="width:100%;">		
											<div>	
												<table cellpadding="5" cellspacing="5">
													<tr>
														<td class="label" colspan="2">
															Fill in Marathi only
														</td>
													</tr>
													<tr>
														<td class="text" colspan="2">
															Copy Paste the names of planets and position using Ctrl+C &amp; Ctrl+V
														</td>
													</tr>
													<tr>
														<td class="marathi_label" align="right" style="font-size: medium">
															<u>स्थान (Position):</u>&nbsp;&nbsp;
														</td>
														<td class="text" style="font-size: medium" style="font-size: medium">
															१ २ ३ ४ ५ ६ ७ ८ ९ १० ११ १२ 
														</td>
													</tr>
													<tr>
														<td class="marathi_label" align="right" style="font-size: medium">
															<u>
																ग्रह
																(Planets):
															</u>
														</td>
														<td class="text" style="font-size: medium">
															रवी, चंद्र, बुध, शुक्र, मंगळ, गुरु, शनी, राहू, केतू, 	हर्षल, नेपच्यून, प्लूटो 
														</td>
													</tr>
												</table> <br>
												<div class="Kundali_BG">
													<div style="position: absolute; margin-left: 390px; margin-top: 49px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 345px; margin-top: 100px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house1" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House1" name="txtDating_House1" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div>
													<div style="position: absolute; margin-left: 220px; margin-top: 68px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 170px; margin-top: 26px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house2" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House2" name="txtDating_House2" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div> 
													<div style="position: absolute; margin-left: 90px; margin-top: 70px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 60px; margin-top: 100px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house3" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House3" name="txtDating_House3" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div>
													 <div style="position: absolute; margin-left: 220px; margin-top: 180px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 170px; margin-top: 210px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house4" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House4" name="txtDating_House4" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div>
													  <div style="position: absolute; margin-left: 90px; margin-top: 270px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 60px; margin-top: 320px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house5" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House5" name="txtDating_House5" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div>
													  <div style="position: absolute; margin-left: 220px; margin-top: 360px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 170px; margin-top: 400px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house6" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House6" name="txtDating_House6" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div>
													 <div style="position: absolute; margin-left: 390px; margin-top: 270px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 345px; margin-top: 320px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house7" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House7" name="txtDating_House7" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div>
													   <div style="position: absolute; margin-left: 560px; margin-top: 360px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 530px; margin-top: 400px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house8" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House8" name="txtDating_House8" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div>
													<div style="position: absolute; margin-left: 690px; margin-top: 290px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 640px; margin-top: 320px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house9" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House9" name="txtDating_House9" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div>
													  <div style="position: absolute; margin-left: 560px; margin-top: 180px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 530px; margin-top: 210px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house10" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House10" name="txtDating_House10" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div> 
													 <div style="position: absolute; margin-left: 690px; margin-top: 58px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 640px; margin-top: 93px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house11" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House11" name="txtDating_House11" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div> 
													 <div style="position: absolute; margin-left: 560px; margin-top: 68px;">
														<div>
															&nbsp;
														</div>
													</div>
													<div style="position: absolute; margin-left: 530px; margin-top: 26px;">
														<div>
															<html:text name="userForm" property="user.matrimonyProfile.horoscope.house12" 
																styleClass="SmallInputBox" maxlength="100">
															</html:text>
															<%--
															<input type="text" id="txtDating_House12" name="txtDating_House12" class="SmallInputBox" maxlength="100">
															--%>
														</div>
													</div>
												</div>				
											</div>							
										</div>
									</div>
								</div>
							</td>                          
						</tr>
						<tr>
							<td align="left" colspan="2" width="100%">
								<table width="50%" border="0" cellpadding="5" cellspacing="5">
									<tr>
										<td class="label" align="right" width="30%" nowrap>Horoscope Matching:</td>
										<td width="70%">
											<html:select name="userForm" property="user.matrimonyProfile.horoscope.horoscopeMatchingCode" styleClass="InputBox">
												<logic:iterate name="<%= Constants.OPTIONS_LIST %>" id="keyValueVO" 
																type="com.matrimony.vo.KeyValueVO" >
													<html:option value="<%= keyValueVO.getValue()%>">
														<bean:message key="<%= keyValueVO.getKey()%>" />
													</html:option>
												</logic:iterate>
											</html:select>
										</td>
									</tr>
									<tr>
										<td class="label" align="right" width="30%">Birth Date:</td>
										<td width="70%" class="profile_info">
											<bean:write name="userForm" property="user.matrimonyProfile.personal.birthDate" format="dd-MMMM-yyyy" />
										</td>
									</tr>
									<tr>
										<td class="label" align="right" width="30%">Birth Time:</td>
										<td width="70%" class="profile_info" nowrap>
											<html:select name="userForm" property="user.matrimonyProfile.horoscope.birthHour" styleClass="SmallSelectBox">
												<%
												for (int birthHr=0; birthHr < 24; birthHr++) 
												{
												%>
													<html:option value="<%=Integer.toString(birthHr)%>">
														<%=birthHr%>
													</html:option>
												<%
												}
												%>
											</html:select>
											Hour
											<html:select name="userForm" property="user.matrimonyProfile.horoscope.birthMin" styleClass="SmallSelectBox">
												<%
												for (int birthMin=0; birthMin < 60; birthMin++) 
												{
												%>
													<html:option value="<%=Integer.toString(birthMin)%>">
														<%=birthMin%>
													</html:option>
												<%
												}
												%>
											</html:select>
											Minute
										</td>
									</tr>
									<tr>
										<td class="label" align="right" width="30%">Birth Place:</td>
										<td width="70%">
											<html:text name="userForm" property="user.matrimonyProfile.horoscope.birthPlace" 
												styleClass="InputBox" size="30" styleId="birthPlace" />
										</td>
									</tr>
									<tr>
										<td class="label" align="right" width="30%">Gan:</td>
										<td width="70%">
											<html:select name="userForm" property="user.matrimonyProfile.horoscope.ganCode" styleClass="InputBox">
												<logic:iterate name="<%= Constants.GAN_LIST %>" id="keyValueVO" 
																type="com.matrimony.vo.KeyValueVO" >
													<html:option value="<%= keyValueVO.getValue()%>">
														<bean:message key="<%= keyValueVO.getKey()%>" />
													</html:option>
												</logic:iterate>
											</html:select>
										</td>
									</tr>
									<tr>
										<td class="label" align="right" width="30%">Nadi:</td>
										<td width="70%">
											<html:select name="userForm" property="user.matrimonyProfile.horoscope.nadiCode" styleClass="InputBox">
												<logic:iterate name="<%= Constants.NADI_LIST %>" id="keyValueVO" 
																type="com.matrimony.vo.KeyValueVO" >
													<html:option value="<%= keyValueVO.getValue()%>">
														<bean:message key="<%= keyValueVO.getKey()%>" />
													</html:option>
												</logic:iterate>
											</html:select>
										</td>
									</tr>
									<tr>
										<td class="label" align="right" width="30%">Charan:</td>
										<td width="70%">
											<html:select name="userForm" property="user.matrimonyProfile.horoscope.charanCode" styleClass="InputBox">
												<logic:iterate name="<%= Constants.CHARAN_LIST %>" id="keyValueVO" 
																type="com.matrimony.vo.KeyValueVO" >
													<html:option value="<%= keyValueVO.getValue()%>">
														<bean:message key="<%= keyValueVO.getKey()%>" />
													</html:option>
												</logic:iterate>
											</html:select>
										</td>
									</tr>
									<tr>
										<td class="label" align="right" width="30%">Nakshtra:</td>
										<td width="70%">
											<html:select name="userForm" property="user.matrimonyProfile.horoscope.nakshtraCode" styleClass="BigSelectBox">
												<logic:iterate name="<%= Constants.NAKSHTRA_LIST %>" id="keyValueVO" 
																type="com.matrimony.vo.KeyValueVO" >
													<html:option value="<%= keyValueVO.getValue()%>">
														<bean:message key="<%= keyValueVO.getKey()%>" />
													</html:option>
												</logic:iterate>
											</html:select>
										</td>
									</tr>
									<tr>
										<td class="label" align="right" width="30%">Mangal:</td>
										<td width="70%">
											<html:select name="userForm" property="user.matrimonyProfile.horoscope.mangalCode" styleClass="InputBox">
												<logic:iterate name="<%= Constants.OPTIONS_LIST %>" id="keyValueVO" 
																type="com.matrimony.vo.KeyValueVO" >
													<html:option value="<%= keyValueVO.getValue()%>">
														<bean:message key="<%= keyValueVO.getKey()%>" />
													</html:option>
												</logic:iterate>
											</html:select>
										</td>
									</tr>
									<tr>
										<td class="label" align="right" width="30%">Horoscope Sign:</td>
										<td width="70%">
											<html:select name="userForm" property="user.matrimonyProfile.horoscope.horoscopeSignCode" styleClass="InputBox">
												<logic:iterate name="<%= Constants.HOROSCOPE_SIGN_LIST %>" id="keyValueVO" 
																type="com.matrimony.vo.KeyValueVO" >
													<html:option value="<%= keyValueVO.getValue()%>">
														<bean:message key="<%= keyValueVO.getKey()%>" />
													</html:option>
												</logic:iterate>
											</html:select>
										</td>
									</tr>
									<tr>
										<td class="label" align="center" colspan="2">
											<html:submit property="savePersonalInfo" styleClass="FormButton">
												&nbsp;&nbsp;<bean:message key="my_profile.button.save" />&nbsp;&nbsp;
											</html:submit>
											<html:hidden property="modifiedUserAttributeCode" 
															value="<%=UserAttributes.HOROSCOPE.getName()%>" />
											<html:hidden property="action" value="save" />
											&nbsp;&nbsp;&nbsp;&nbsp;
											<html:reset styleClass="FormButton">
												&nbsp;&nbsp;<bean:message key="my_profile.button.reset" />&nbsp;&nbsp;
											</html:reset>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</tbody>
					</table>		
				</div>
			</html:form>
		</td>
	</tr>
</table>
