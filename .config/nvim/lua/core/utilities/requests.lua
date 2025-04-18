local https = require("ssl.https")
local ltn12 = require("ltn12")

R = {}

function R.get(url, response, headers)
    local res, code, head, status = https.request {
        url = url,
        method = "GET",
        sink = ltn12.sink.table(response),
        headers = headers or {}
    }

    response = table.concat(response)
    return { body = response, success = res, code = code, headers = head, status = status }

end


function R.post(url, basicAuth, request, data)

end


