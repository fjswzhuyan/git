<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"
	scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="expires" content="0" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<title>"京东支付"PC版demo</title>
</head>
<body onload="autosubmit()">
	<form action="${payUrl}" method="post" id="batchForm">
		<input type="hidden" name="version" value="${payOrderInfo.version}"><br />
		<input type="hidden" name="merchant" value="${payOrderInfo.merchant}"><br />
		<input type="hidden" name="device" value="${payOrderInfo.device}"><br />
		<input type="hidden" name="tradeNum" value="${payOrderInfo.tradeNum}"><br />
		<input type="hidden" name="tradeName" value="${payOrderInfo.tradeName}"><br /> 
		<input type="hidden" name="tradeDesc" value="${payOrderInfo.tradeDesc}"><br /> 
		<input type="hidden" name="tradeTime" value="${payOrderInfo.tradeTime}"><br />
		<input type="hidden" name="amount" value="${payOrderInfo.amount}"><br />
		<input type="hidden" name="currency" value="${payOrderInfo.currency}"><br />
		<input type="hidden" name="note" value="${payOrderInfo.note}"><br />
		<input type="hidden" name="callbackUrl" value="${payOrderInfo.callbackUrl}"><br /> 
		<input type="hidden" name="notifyUrl" value="${payOrderInfo.notifyUrl}"><br />
		<input type="hidden" name="ip" value="${payOrderInfo.ip}"><br />
		<input type="hidden" name="expireTime" value="${payOrderInfo.expireTime}"><br /> 
		<input type="hidden" name="orderType" value="${payOrderInfo.orderType}"><br />
		<input type="hidden" name="industryCategoryCode" value="${payOrderInfo.industryCategoryCode}"><br /> 
		<input type="hidden" name="sign" value="${payOrderInfo.sign}"><br />
		<input type="hidden" name="cert" value="${payOrderInfo.cert}"><br />
		<input type="hidden" name="payMerchant" value="${payOrderInfo.payMerchant}"><br />
		<input type="hidden" name="tradeType" value="${payOrderInfo.tradeType}"><br />
	    <input type="hidden" name="riskInfo" value="${payOrderInfo.riskInfo}"><br />
		
	</form>
	<script>
		function autosubmit(){
			document.getElementById("batchForm").submit();
		}	
	</script>

</body>
</html>