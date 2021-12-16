var serverAddress="https://www.atfawry.com";
var eventMethod = window.addEventListener ? "addEventListener" : "attachEvent";
var eventer = window[eventMethod];
var messageEvent = eventMethod == "attachEvent" ? "onmessage" : "message";
var productsJSON = "{}";

class FawryPay {
	constructor() {
	}

	static loadWidgetRedirect() {	
		var div = document.createElement("form");	
		document.body.appendChild(div);	
			div.method = "POST";
			div.action = serverAddress+'/ECommercePlugin/FawryPayCheckout.jsp';

		div.innerHTML = '<form id="fawryFayForm" action="'+serverAddress+'/ECommercePlugin/FawryPayCheckout.jsp>' 
			+' <input type="hidden" name="lang" value='+ FawryPay.chargeRequest.language + '>' 
			+' <input type="hidden" name="chargeReq" value='+ encodeURIComponent(JSON.stringify(FawryPay.chargeRequest))+ '>'
			+' <input type="text" name="successPageUrl" value='+ FawryPay.undefinedOrNullToEmpty(FawryPay.successPageUrl)+ ' >'
			+' <input type="text" name="failerPageUrl" value='+ FawryPay.undefinedOrNullToEmpty(FawryPay.failerPageUrl)+ '>';
			console.log(JSON.stringify(FawryPay.chargeRequest));
			div.submit();
	}
	
	static loadWidget() {	
		var div = document.createElement("div");
		div.innerHTML = '<iframe id="fawryPluginFrame" src="' + serverAddress +
			'/ECommercePlugin/plugin.jsp?lang=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.language)+
			'&merchant=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.merchantCode) +
			'&merchantRefNum=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.merchantRefNumber) +
			'&userName=' + (FawryPay.chargeRequest.customer ? FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.customer.name) : '') +
			'&mobile=' + (FawryPay.chargeRequest.customer ? FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.customer.mobile) : '') +
			'&email=' + (FawryPay.chargeRequest.customer ?  FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.customer.email) : '') +
			'&cif=' + (FawryPay.chargeRequest.customer ?  FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.customer.cif) : '') +
			'&customerId=' + (FawryPay.chargeRequest.customer ? FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.customer.customerProfileId) :'') +
			'&orderDesc=' + encodeURIComponent(FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.order.description)) +
			'&orderExpiry=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.order.expiry) +
			'&orderExpiryDate=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.order.expiryDate) +
			'&signature=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.signature) +
			'&invoiceCode=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.invoiceCode) +
			'&visaCardOnly=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.visaCardOnly) +
			'&customerRegisteredAddress=' + (FawryPay.chargeRequest.customer ? encodeURIComponent(JSON.stringify(FawryPay.chargeRequest.customer.address )) : '') +
			'&preferredShippingOption=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.preferredShippingOption) 	+
			'&deliveryTypeCode=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.deliveryTypeCode) 	+
			'&fawryFees=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.fawryFees) 	+
			'&shippingFees=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.shippingFees) 	+
			'&billingAccountNumber=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.order.billingAccount) 	+
			'&extraBillingAcctKeys=' + (FawryPay.chargeRequest.order.extraBillingAcctKeys ? encodeURIComponent(JSON.stringify(FawryPay.chargeRequest.order.extraBillingAcctKeys)) : '')	+
			'&authCaptureModePayment=' + FawryPay.undefinedOrNullToEmpty(FawryPay.chargeRequest.authCaptureModePayment) +
			'" style=" background-color:rgb(245,245,245);position: fixed; width: 100%;height: 100%;top: 0%;left: 0%;z-index: 999999;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#b2000000, endColorstr=#b2000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#b2000000, endColorstr=#b2000000)";" allowtransparency="false"  />';
		
	
		document.body.appendChild(div.childNodes[0]);
	}

	 

	static checkout(chargeRequest,successPageUrl,failerPageUrl) {
		FawryPay.chargeRequest = chargeRequest;
		FawryPay.chargeRequest.successPageUrl = successPageUrl;
		FawryPay.chargeRequest.failerPageUrl = failerPageUrl;
		if(chargeRequest.customer) {
			if(chargeRequest.customerEmail)
				FawryPay.chargeRequest.customer.email =chargeRequest.customerEmail;
			if(chargeRequest.customerMobile)	
				FawryPay.chargeRequest.customer.mobile=chargeRequest.customerMobile;
			FawryPay.chargeRequest.customer.cif=chargeRequest.customer.cif;
		}

		if(window.navigator.userAgent.match(/Mac OS/))
			FawryPay.loadWidgetRedirect();
		else
			FawryPay.loadWidget();
		 
	}
 
	static undefinedOrNullToEmpty(value)
	{
		if(typeof value === 'number')
			return value;
		else if (typeof value === "undefined" || value == null || value.toUpperCase() === "null".toUpperCase())
		{
			return '';
		}
		return value;
	}

}
 
// Listen to message from child window
eventer(messageEvent, function(e) {
	var key = e.message ? "message" : "data";
	var data = e[key];
	if (data == 'deleteFrame')
		deleteFrame();
	else if (data == 'getData')
		sendMessage();
	else if (data && data.func && data.func == 'paymentDoneCallbackFunction')
		success(data);
	else if (data && data.func && data.func == 'requestCanceldCallBack')
		failed(data);
// run function//
}, false);


function success(data) {
	var chargeResponse = {};
	chargeResponse.merchantRefNumber = FawryPay.chargeRequest.merchantRefNumber;
	chargeResponse.fawryRefNumber = data.billUploadBillAccNum;
	chargeResponse.paymentMethod = data.paymentMethod;
	chargeResponse.shippingOption= data.shippingOption;
	chargeResponse.signature = data.messageSignature;
	
	if(FawryPay.successCallback)
	{		
		FawryPay.successCallback(chargeResponse);
	}
	else
		window.location.href = FawryPay.chargeRequest.successPageUrl+'?chargeResponse=' + JSON.stringify(chargeResponse);
}

function failed(data) {
	if(FawryPay.errorCallback)
		FawryPay.errorCallback(FawryPay.chargeRequest.merchantRefNumber);
	else
		window.location.href = FawryPay.chargeRequest.failerPageUrl+'?merchantRefNum=' + FawryPay.chargeRequest.merchantRefNumber+'&failureReasonCode='+(data.failureReasonCode ? data.failureReasonCode : '') +'&failureReasonMsg='+(data.failureReasonMsg ? data.failureReasonMsg :'')  ;
}

function sendMessage() {
	var iframe = document.getElementById('fawryPluginFrame');
	iframe.contentWindow.postMessage(JSON.stringify(FawryPay.chargeRequest.order.orderItems), '*');
}

function deleteFrame() {
	var iframe = document.getElementById('fawryPluginFrame');
	if(iframe){	 
		iframe.remove();
	}
}