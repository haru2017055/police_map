@echo off
:: 檢查是否有 index.html
if not exist index.html (
    echo [錯誤] 找不到 index.html，請確保此檔案放在地圖資料夾中。
    pause
    exit
)

echo === 正在準備上傳 MochiRP 地圖 ===

:: 1. 加入所有變更
git add .

:: 2. 設定提交訊息
set msg=Update Map: %date% %time%
git commit -m "%msg%"

:: 3. 推送到 GitHub (這裡把 main 改成 master)
echo 正在推送至 GitHub...
git push origin master

echo === 更新完成！ ===
pause