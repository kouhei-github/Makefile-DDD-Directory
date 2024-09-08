# プロジェクトのルートディレクトリを作成
DIRS = Application/UseCase \
       Domain/Interface \
       Domain/Model \
       Domain/Service \
       Infrastructure/Datastore \
       Infrastructure/External \
       Presentation/Api/Server/Controller \
       Presentation/Api/Server/Middleware \
       Presentation/Api/Server/Router \
       di

# デフォルトのターゲット
all: create_dirs create_files

# ディレクトリを作成
create_dirs:
	@echo "ディレクトリを作成中..."
	@mkdir -p $(DIRS)

# 特定のファイルを作成
create_files:
	@echo "ファイルを作成中..."
	@touch Application/UseCase/index.d.ts
	@touch di/index.ts

# クリーンアップ（全てのディレクトリとファイルを削除）
clean:
	@echo "クリーンアップ中..."
	@rm -rf Application Domain Infrastructure Presentation di

# ヘルプメッセージ
help:
	@echo "使用可能なコマンド:"
	@echo "  make        - 全てのディレクトリとファイルを作成"
	@echo "  make clean  - 作成された全てのディレクトリとファイルを削除"
	@echo "  make help   - このヘルプメッセージを表示"

.PHONY: all create_dirs create_files clean help
