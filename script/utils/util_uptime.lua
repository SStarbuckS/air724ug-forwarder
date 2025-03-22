module(..., package.seeall)

-- 发送心跳包（使用 GET 请求）
function send_heartbeat()
    log.info("util_uptime", "开始发送心跳包")

    -- 直接发送请求，不处理回调
    http.request("GET", config.HEARTBEAT_URL)
end
