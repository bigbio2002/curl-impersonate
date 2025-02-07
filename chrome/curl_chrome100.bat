:: The list of ciphers can be obtained by looking at the Client Hello message in
:: Wireshark, then converting it using this reference
:: https://wiki.mozilla.org/Security/Cipher_Suites
@echo off
"%~dp0curl.exe" ^
    --ciphers TLS_AES_128_GCM_SHA256,TLS_AES_256_GCM_SHA384,TLS_CHACHA20_POLY1305_SHA256,ECDHE-ECDSA-AES128-GCM-SHA256,ECDHE-RSA-AES128-GCM-SHA256,ECDHE-ECDSA-AES256-GCM-SHA384,ECDHE-RSA-AES256-GCM-SHA384,ECDHE-ECDSA-CHACHA20-POLY1305,ECDHE-RSA-CHACHA20-POLY1305,ECDHE-RSA-AES128-SHA,ECDHE-RSA-AES256-SHA,AES128-GCM-SHA256,AES256-GCM-SHA384,AES128-SHA,AES256-SHA ^
    -H "sec-ch-ua: \" Not A;Brand\";v=\"99\", \"Chromium\";v=\"100\", \"Google Chrome\";v=\"100\"" ^
    -H "sec-ch-ua-mobile: ?0" ^
    -H "sec-ch-ua-platform: \"Windows\"" ^
    -H "Upgrade-Insecure-Requests: 1" ^
    -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36" ^
    -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" ^
    -H "Sec-Fetch-Site: none" ^
    -H "Sec-Fetch-Mode: navigate" ^
    -H "Sec-Fetch-User: ?1" ^
    -H "Sec-Fetch-Dest: document" ^
    -H "Accept-Encoding: gzip, deflate, br" ^
    -H "Accept-Language: en-US,en;q=0.9" ^
    --http2 ^
    --http2-settings "1:65536;3:1000;4:6291456;6:262144" ^
    --http2-window-update 15663105 ^
    --http2-stream-weight 256 ^
    --http2-stream-exclusive 1 ^
    --compressed ^
    --tlsv1.2 --alps ^
    --cert-compression brotli ^
    --tls-grease ^
    %*
