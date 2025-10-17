# Spring Native Workshop

歡迎來到 Spring Native Workshop！本系列實驗將帶您學習如何建置和部署高效能的 Spring Native 應用程式。

## 🎯 關於此 Workshop

Spring Native 讓您能夠將 Spring 應用程式編譯成原生執行檔，帶來以下優勢：

- ⚡ **快速啟動**：啟動時間減少 10-100 倍
- 💾 **低記憶體使用**：記憶體佔用減少 50-80%
- 📦 **小型映像檔**：Docker 映像檔體積更小
- 🚀 **適合 Serverless**：在 Cloud Run 等平台上冷啟動延遲顯著降低

## 📚 實驗列表

### Lab 1: Spring Native 快速入門
- **時間**：約 21 分鐘
- **難度**：初級
- **內容**：
  - 使用 Spring Initializr 建立專案
  - 配置 Gradle 和 Spring Native 設定
  - 建置 JIT 和 Native 映像檔
  - 部署到 Google Cloud Run
  - 比較效能差異

**[開始 Lab 1](spring-native-workshop-lab1/index.html)**

## 🛠️ 先決條件

- 基本的 Java 和 Spring Boot 知識
- Google Cloud 帳號
- 建議使用 **Google Cloud Shell**（已預先安裝所有必要工具）

## 📖 如何使用

### 線上版本
直接訪問 [GitHub Pages](https://seanchenr.github.io/spring-native-workshop/) 開始學習。

### 本地運行
如果您想在本地查看 Codelab：

1. Clone 此倉庫：
   ```bash
   git clone https://github.com/SeanChenR/spring-native-workshop.git
   cd spring-native-workshop
   ```

2. 使用簡單的 HTTP 伺服器：
   ```bash
   # 使用 Python
   python3 -m http.server 8000

   # 或使用 Node.js
   npx http-server
   ```

3. 在瀏覽器中開啟 `http://localhost:8000`

## 🔧 開發

### 建立新的 Codelab

1. 編輯或建立 Markdown 檔案（例如 `codelab1.md`）
2. 使用 `claat` 工具匯出：
   ```bash
   claat export codelab1.md
   ```
3. 產生的 HTML 會放在對應的資料夾中

### 安裝 claat

```bash
# macOS
brew install claat

# 或直接下載
go install github.com/googlecodelabs/tools/claat@latest
```

## 📝 授權

本專案採用 MIT 授權條款。

## 👤 作者

**Sean Chen**

- GitHub: [@SeanChenR](https://github.com/SeanChenR)

## 🤝 貢獻

歡迎提交 Issue 或 Pull Request！

## 📚 參考資源

- [Spring Native 官方文件](https://docs.spring.io/spring-native/docs/current/reference/htmlsingle/)
- [GraalVM 官網](https://www.graalvm.org/)
- [Google Cloud Run 文件](https://cloud.google.com/run/docs)
- [Google Codelabs Tools](https://github.com/googlecodelabs/tools)
