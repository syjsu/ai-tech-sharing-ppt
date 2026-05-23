# AI Tech Sharing PPT

AI 技术分享会用的 PPT 脚手架 — 基于 **Marp** 生态，用 Markdown 写幻灯片。

当前主题：**zju**（浙大学术蓝），源码 `index.md` 可直接编译。

## 快速开始

```bash
npm install
npm run build
open index.html
```

然后修改 `index.md` 开始写自己的内容。

## 命令

| 命令 | 说明 |
|------|------|
| `npm run build` | 编译 `index.md` → `index.html` |
| `npm run pdf` | 导出 PDF |
| `npm run pptx` | 导出 PPTX |
| `npm run preview` | 启动实时预览 |

## 项目结构

```
index.md              # 幻灯片源文件（从这里改）
index.html            # 生成的 HTML
images/               # 幻灯片示意图（SVG/PNG）
themes/               # 主题 CSS + zju 背景图片
  am_blue/brown/dark/green/purple/red.css   # Awesome-Marp 6 色
  companyLightBlue/companySZ.css            # 科技蓝/深蓝
  zju.css                                   # 浙大学术蓝（当前使用）
  am_template.css                           # Awesome-Marp 模板
  images/zju/                               # zju 主题背景图片
docs/                 # Marpit 官方文档手册
```

## 主题切换

在 `index.md` YAML 头部修改 `theme:` 字段：

可选主题：`am_blue` `am_green` `am_purple` `am_red` `am_brown` `am_dark` `companyLightBlue` `companySZ` `zju`

来源：[Awesome-Marp](https://github.com/favourhong/Awesome-Marp) · [marp-themes](https://github.com/zhaoluting/marp-themes)

## 当前 zju 主题版式

| 版式 | 效果 | 用法 |
|------|------|------|
| `homePage` | 封面 / 章节过渡 | `<!-- _class: homePage -->` |
| `contents` | 目录页 | `<!-- _class: contents -->` |
| `contentPage` | 正文（无 header） | `<!-- _class: contentPage -->` |
| 正文 header | 蓝色顶栏标题 | `<!-- _header: "标题名" -->` |

## 导出 PPTX/PDF

```bash
npm run pptx    # → slides.pptx
npm run pdf     # → slides.pdf
```

依赖 Chrome 渲染引擎。

## 常见问题

### 图片不显示
Chrome `file://` 协议限制本地资源加载。确保图片路径相对 markdown 文件：
- `index.md` 引用 `images/xxx.svg` — 正确
- `themes/zju.css` 引用 `images/zju/xxx.png` — 正确（相对 themes/ 本身）

### Header 不显示
须用 `<!-- _header: "标题" -->` 指令，不能用 HTML `<header>` 标签。
