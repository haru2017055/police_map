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

:: 2. 設定提交訊息 (包含當前時間)
set msg=Update Map: %date% %time%
git commit -m "%msg%"

:: 3. 推送到 GitHub
echo 正在推送至 GitHub...
git push origin main

echo === 更新完成！ ===
echo 網頁通常會在 1-2 分鐘內同步完成。
pause