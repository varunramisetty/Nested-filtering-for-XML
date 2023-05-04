//Nested filtering for XML
//I would also like to very that I am getting the work value when the @type equals Communication_Usage_Type_ID, but don't want to do an array check. Is there a way to validate @type == "Communication_Usage_Type_ID" and the value == "WORK", then get the email address
%dw 2.0
output application/json
---
//in this particular dataweave script im trying to vary if there is WORK in the Communication_Usage_Type_ID then we want to print that email id, for that case im using filter, contains and reduce function to get the result

((payload.Contact_Data.*Email_Address_Data filter ((item, index) -> item.Usage_Data.Type_Data.Type_Reference.*ID contains "WORK")) reduce ($$)).Email_Address