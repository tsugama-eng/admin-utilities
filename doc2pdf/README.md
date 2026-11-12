# doc2pdf_convert.ps1

A lightweight PowerShell script to batch convert `.docx` files to `.pdf` using Microsoft Word's COM automation, preserving complex layouts and formatting.

## Requirements
* Windows OS with Microsoft Word installed.

## Usage
* **Convert a specific folder:**
  ```powershell
  .\doc2pdf_convert.ps1 "C:\(\path\to\your\folder\)"
  ```
* **Convert the current folder:**
  ```powershell
  .\doc2pdf_convert.ps1
  ```

## Setup & Troubleshooting

### 1. Execution Policy Error (`PSSecurityException`)
If Windows blocks the script on your first run, allow local scripts for your user account:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
*(To revert to the default restriction later, run: `Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser`)*

### 2. Run from Anywhere (Add to PATH)
1. Place `doc2pdf_convert.ps1` in a dedicated folder (e.g., `C:\tools`).
2. Press the **Windows Key**, type `environment variables`, and select **Edit environment variables for your account**.
3. Under **User variables**, select **Path** and click **Edit...**.
4. Click **New** and add the folder path (`C:\tools`).
5. Click **OK** to save, then restart your terminal. You can now run `doc2pdf_convert.ps1` from any directory without `.\`.

## Alternative: Cross-Platform One-Liner (LibreOffice)

If you are on macOS/Linux or do not have Microsoft Word installed, you can achieve similar batch conversion using **LibreOffice** from your terminal:

```bash
soffice --headless --convert-to pdf *.docx
```
*(Note: Requires LibreOffice to be installed and `soffice` added to your system PATH.)*

---

# doc2pdf_convert.ps1

Microsoft WordのCOMオートメーションを利用し、複雑なレイアウトや書式を保持したまま `.docx` ファイルを `.pdf` に一括変換する軽量なPowerShellスクリプトです。

## 動作要件
* Microsoft Word がインストールされた Windows OS

## 使い方
* **特定のフォルダを変換する場合:**
  ```powershell
  .\doc2pdf_convert.ps1 "C:\(\path\to\your\folder\\)"
  ```
* **現在のフォルダを変換する場合:**
  ```powershell
  .\doc2pdf_convert.ps1
  ```

## セットアップとトラブルシューティング

### 1. 実行ポリシーのエラー（`PSSecurityException`）
初回実行時にWindowsによってスクリプトの実行がブロックされた場合は、現在のユーザーアカウントでローカルスクリプトの実行を許可してください。
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
*(後からデフォルトの制限状態に戻したい場合は、次のコマンドを実行してください: `Set-ExecutionPolicy -ExecutionPolicy Undefined -Scope CurrentUser`)*

### 2. どこからでも実行できるようにする（PATHへの追加）
1. `doc2pdf_convert.ps1` を専用のフォルダ（例：`C:\tools`）に配置します。
2. **Windowsキー** を押し、`環境変数` と入力して **「環境変数を編集」**（アカウントの環境変数の編集）を選択します。
3. **「ユーザー環境変数」** のリストから **`Path`** を選択し、**「編集...」** をクリックします。
4. **「新規」** をクリックし、スクリプトを置いたフォルダのパス（`C:\tools`）を追加します。
5. **「OK」** をクリックして保存し、ターミナル（PowerShell）を再起動します。これで、どのディレクトリからでも先頭の `.\` なしで `doc2pdf_convert.ps1` を実行できるようになります。

## 代替手段：LibreOffice を使ったワンライナー（Mac / Linux 対応）

macOS や Linux 環境の場合、または Microsoft Word がインストールされていない場合は、**LibreOffice** を使ってターミナルから以下の1行を実行することでも一括変換が可能です。

```bash
soffice --headless --convert-to pdf *.docx
```
*(※あらかじめ LibreOffice をインストールし、`soffice` コマンドにパスが通っている必要があります)*

