# AI Tech Sharing PPT

基于 Marp 的 AI 技术分享会 PPT 脚手架。当前 zju 主题。

## 工作流

```bash
npm run build    # 编译 index.md → index.html
open index.html  # 预览
npm run pptx     # 导出 PPTX（需 Chrome）
npm run pdf      # 导出 PDF（需 Chrome）
```

## 项目结构

```
index.md              # 幻灯片源文件
images/               # 示意图 SVG/PNG
themes/zju.css        # 当前主题 CSS（浙大学术蓝）
themes/images/zju/    # zju 主题背景图片
themes/am_*.css       # Awesome-Marp 备用主题
themes/company*.css   # 科技蓝备用主题
docs/                 # Marpit 官方文档手册
```

## YAML 配置

```yaml
---
marp: true
html: true
size: 16:9
theme: zju
paginate: true
style: |
  :root header { ... }   # 自定义 header 样式
---
```

## zju 主题版式

| 指令 | 效果 |
|------|------|
| `<!-- _class: homePage -->` | 深蓝封面页 |
| `<!-- _class: contents -->` | 深蓝目录页 |
| `<!-- _header: "标题" -->` | 内容页蓝色顶栏 |
| `<!-- _header: "" -->` | 隐藏顶栏 |

**不要用 `<header>` HTML 标签**，Marp 会转义。用 `<!-- _header: "..." -->` 指令。

## 图片

- `index.md` 中引用 `images/xxx.svg`（相对 index.md）
- `themes/zju.css` 中引用 `images/zju/xxx.png`（相对 themes/zju.css）
- 图片文件在 `themes/images/zju/` 目录

## 重要规则

### 不要转义 `<!--`
`<!-- _header: "xxx" -->` 中的 `<!--` 必须保持原样：
- ✅ `<!-- _class: homePage -->`
- ❌ `<\!-- _class: homePage -->`

### 修改 .md 用 Edit 工具
Python/Bash heredoc 会将 `!` 转义为 `\!`，导致 `![alt](url)` 不渲染、`<!--` 变 `<\!--`。务必用 Edit 工具操作。

### 如文件已出现转义
用二进制方式清除：`python3 -c` 中 `bytes([0x5C, 0x21])` 替换为 `b'!'`。
