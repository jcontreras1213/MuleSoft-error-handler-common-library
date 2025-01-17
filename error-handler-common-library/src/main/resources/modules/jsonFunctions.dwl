%dw 2.0
// The functions in this file are accredited to the MuleSoft Catalyst JSON Logger
fun stringifyNonJSON(inputData: Any) = 
    if (inputData.^mimeType == "application/xml" or inputData.^mimeType == "application/dw")
	write(inputData,inputData.^mimeType,{ident:false})
	else if (inputData.^mimeType == "application/json" or inputData.^mimeType == "*/*")
	inputData
	else
	write(inputData,inputData.^mimeType)
	
	
