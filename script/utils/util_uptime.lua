module(..., package.seeall)

-- GET请求发送心跳包
function send_heartbeat()
    log.info("util_uptime", "开始发送心跳包")

    -- 直接发送请求，不处理回调
    sys.taskInit(function()
        http.request("GET", config.HEARTBEAT_URL)
    end)
end
