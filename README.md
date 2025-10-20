# Spring Native Workshop

歡迎來到 Spring Native Workshop！本實驗將帶您建置一個圖片分析應用程式，學習如何使用 Spring Native 技術並部署到 Google Cloud Run。

## 🎯 關於此 Workshop

Spring Native 讓您能夠將 Spring 應用程式編譯成原生執行檔，帶來以下優勢：

- ⚡ **快速啟動**：啟動時間減少 95%（從 5-10 秒降至 <0.1 秒）
- 💾 **低記憶體使用**：記憶體佔用減少 50%（從 ~200MB 降至 ~100MB）
- 📦 **小型映像檔**：Docker 映像檔體積減少 50%（從 ~400MB 降至 ~200MB）
- 🚀 **適合 Serverless**：在 Cloud Run 等平台上冷啟動延遲顯著降低

## 📚 實驗內容

### Spring Native Workshop - Image Analysis Application

- **時間**：約 50 分鐘
- **難度**：中級
- **內容**：
  - 建立 Google Cloud Project 和 Compute Engine VM
  - 安裝開發環境（Docker、GraalVM、Maven 等）
  - 建置 JIT 和 Native 版本的 Spring Boot 應用程式
  - 整合 Google Cloud Vision API 進行圖片分析
  - 使用 Cloud Storage 儲存圖片
  - 使用 Firestore 儲存分析結果
  - 使用 Eventarc 建立事件驅動架構
  - 部署到 Google Cloud Run
  - 比較 JIT vs Native 的效能差異

**[開始實驗](https://seanchenr.github.io/spring-native-workshop/spring-native-workshop-lab/index.html#0)**

## 🏗️ 應用程式架構

本實驗建置的應用程式流程：

1. 使用者上傳圖片到 Cloud Storage
2. Cloud Storage 觸發 Eventarc 事件
3. Eventarc 呼叫 Cloud Run 服務
4. Cloud Run 服務使用 Vision API 分析圖片
5. 分析結果儲存到 Firestore

## 🛠️ 先決條件

- 基本的 Java 和 Spring Boot 知識
- Google Cloud 帳號並啟用計費
- 建立 Compute Engine VM（建議規格）：
  - **地區**：asia-east1 (台灣)
  - **作業系統**：Ubuntu 24.04 LTS x86/64
  - **機器類型**：e2-standard-4 (4 vCPUs, 16 GB Memory)
  - **開機磁碟**：100 GB

## 🔧 技術堆疊

- **語言/框架**：Java 17, Spring Boot 3.2.0
- **建置工具**：Maven
- **編譯器**：GraalVM Native Image
- **容器化**：Docker, Cloud Native Buildpacks
- **雲端服務**：
  - Google Cloud Run
  - Google Cloud Vision API
  - Google Cloud Storage
  - Google Firestore
  - Google Eventarc
  - Google Artifact Registry
