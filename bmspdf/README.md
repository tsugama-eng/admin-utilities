# bmspdf - Offline PDF Splitter & Merger / 完全オフライン PDF分割・結合ツール

A web browser app to **split** and **merge** PDF files.  
**PDF分割・結合** ブラウザアプリです。

## Live Demo / Web版（GitHub Pages）

- `https://tsugama-eng.github.io/admin-utilities/bmspdf/`

*(Note: Even when accessed via GitHub Pages, all PDF processing happens locally in your browser. No files are uploaded to any server.)*  
*(※GitHub Pages経由で開いた場合でも、PDFの処理はすべてブラウザ内で行われ、サーバーへのファイル送信は発生しません)*

---

## Features / 主な特徴

- **Client-Side & Privacy-First / ローカル処理・安全性**  
  Runs entirely in the browser using JavaScript (`pdf-lib`). Safe for confidential or personal documents.  
  すべての処理はブラウザ内（JavaScript）で完結します。機密書類や個人情報を含むPDFでも安全に利用できます。

- **Works Completely Offline / 完全オフライン動作**  
  Download this repository or folder to run `index.html` locally without an internet connection.  
  フォルダごとローカルに保存・解凍すれば、インターネット接続が一切ない環境でも動作します。

- **Flexible PDF Splitting / 柔軟なPDF分割パターン**
  - **Odd & Even Split (奇数・偶数2分割):** Separate odd-numbered and even-numbered pages into two PDFs.
  - **Arithmetic Sequence `an + b` (等間隔・剰余パターン抽出):** Extract pages matching formulas like `3n + 2` (pages 2, 5, 8, 11...).
  - **Fixed Page Intervals (指定ページ数ごとに連続分割):** Split a PDF every `N` pages (e.g., every 1 page or every 2 pages).
  - **Custom Pattern (自由パターン指定):** Combine pages with `,` and split into separate files with `/` (e.g., `1-3, 5 / 4, 6-8`).

- **PDF Merging / PDF結合（順番並べ替え対応）**  
  Combine multiple PDF files into a single PDF and reorder them easily before merging.  
  複数のPDFファイルを1つに結合できます。結合前に上下ボタンでファイルの順番を自由に入れ替えられます。

---

## Directory Structure / ファイル構成

```text
admin-utilities/
└── bmspdf/
    ├── index.html       # Main application (HTML/CSS/JS)
    ├── pdf-lib.min.js   # Local pdf-lib v1.17.1 bundle
    └── README.md        # Documentation
```

## Local Setup / ローカルでの使い方

1. Clone or download&unzip the `admin-utilities` repository.  
   リポジトリをクローン、またはZIPでダウンロードして解凍します。
2. Open `bmspdf/index.html` directly in any modern web browser (Chrome, Edge, Firefox, Safari).  
   `bmspdf/index.html` をブラウザで直接開くだけで利用できます。

---

## Credits & License / クレジット・ライセンス

- Powered by [pdf-lib](https://github.com/Hopding/pdf-lib) (MIT License).
- Released under the MIT License.
