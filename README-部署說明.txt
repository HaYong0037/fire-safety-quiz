消防設備士法規刷題系統｜雲端部署起始包

部署前設定：
1. 建立 Supabase 免費專案。
2. 在 Supabase SQL Editor 執行 supabase-schema.sql。
3. 從 Supabase Project Settings > API 複製 Project URL 與 anon/public key。
4. 編輯 index.html，將 YOUR_SUPABASE_PROJECT_URL 和 YOUR_SUPABASE_ANON_KEY 換成實際值。
   絕不可將 service_role key 放入前端。
5. 將本資料夾推送至 GitHub，於 Vercel 匯入 repository 並部署。
6. 在 Supabase Authentication URL Configuration 設定 Vercel 網址及 Redirect URLs。
7. 測試註冊、登入，以及不同設備的同步。

目前是部署起始包，不代表已經公開上線；尚需你建立/連接 Supabase 與 Vercel 專案。
目前內含少量示範題，並非完整、官方逐條校核題庫。未登入時紀錄只存在目前瀏覽器；登入後才同步雲端。
