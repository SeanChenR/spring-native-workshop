#!/bin/bash
set -e  # 遇到錯誤立即停止

echo "=========================================="
echo "開始安裝 Spring Native Workshop 所需環境"
echo "=========================================="

# ============================================
# 1. 安裝 Docker
# ============================================
echo ""
echo "[1/4] 安裝 Docker..."
echo "----------------------------------------"

# 添加 Docker 官方 GPG key
echo "→ 更新套件列表並安裝必要工具..."
sudo apt-get update -qq
sudo apt-get install -y ca-certificates curl

echo "→ 設定 Docker GPG key..."
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# 添加 Docker repository 到 Apt sources
echo "→ 添加 Docker repository..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "→ 更新套件列表..."
sudo apt-get update -qq

# 安裝 Docker 相關套件
echo "→ 安裝 Docker Engine 及相關工具..."
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# 啟動 Docker 服務
echo "→ 啟動 Docker 服務..."
sudo systemctl start docker
sudo systemctl enable docker

echo "✓ Docker 安裝完成！"
docker --version

# ============================================
# 2. 安裝 SDKMAN!
# ============================================
echo ""
echo "[2/4] 安裝 SDKMAN!..."
echo "----------------------------------------"

# 安裝 SDKMAN! 所需的依賴套件
echo "→ 安裝必要工具 (curl, zip, unzip)..."
sudo apt-get update -qq
sudo apt-get install -y curl zip unzip

# 安裝 SDKMAN!
echo "→ 下載並安裝 SDKMAN!..."
curl -s "https://get.sdkman.io" | bash

# 載入 SDKMAN! 環境
echo "→ 初始化 SDKMAN! 環境..."
source "$HOME/.sdkman/bin/sdkman-init.sh"

echo "✓ SDKMAN! 安裝完成！"
sdk version

# ============================================
# 3. 安裝 GraalVM Java 17
# ============================================
echo ""
echo "[3/4] 安裝 GraalVM Java 17..."
echo "----------------------------------------"

# 使用 SDKMAN! 安裝 GraalVM
# GraalVM 是支援 Spring Native 的關鍵元件
echo "→ 透過 SDKMAN! 安裝 GraalVM 17.0.8..."
sdk install java 17.0.8-graal

# 設定 GraalVM 為當前使用的 Java 版本
echo "→ 設定 GraalVM 為預設 Java 版本..."
sdk use java 17.0.8-graal

echo "✓ GraalVM Java 17 安裝完成！"
java -version

# ============================================
# 4. 安裝 Maven
# ============================================
echo ""
echo "[4/4] 安裝 Maven..."
echo "----------------------------------------"

echo "→ 安裝 Maven 建置工具..."
sudo apt-get install -y maven

echo "✓ Maven 安裝完成！"
mvn -version

# ============================================
# 安裝完成
# ============================================
echo ""
echo "=========================================="
echo "✓ 所有環境安裝完成！"
echo "=========================================="
