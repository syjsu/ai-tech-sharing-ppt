# Marpit 简介

**Marpit** 是基于 Markdown 创建幻灯片 deck 的轻量框架，可将 Markdown 和 CSS 主题转换为静态 HTML+CSS 幻灯片页面，并通过 Chrome 打印为 PDF。

## 安装

```bash
npm install @marp-team/marpit
```

## 基本使用

```javascript
import { Marpit } from '@marp-team/marpit'
import fs from 'fs'

const marpit = new Marpit()

// 添加主题 CSS
const theme = `/* @theme example */
section {
  background-color: #369;
  color: #fff;
  font-size: 30px;
  padding: 40px;
}
h1, h2 { text-align: center; margin: 0; }
h1 { color: #8cf; }
`
marpit.themeSet.default = marpit.themeSet.add(theme)

// 渲染 Markdown
const markdown = `# Hello, Marpit!\nMarpit 是从 Markdown 创建幻灯片的轻量框架。\n\n---\n\n## 可转换为 PDF！\n可通过 Chrome 打印为 PDF。`
const { html, css } = marpit.render(markdown)

// 生成 HTML
fs.writeFileSync('output.html', `<!DOCTYPE html>\n<html><body>\n  <style>${css}</style>\n  ${html}\n</body></html>`)
```

## 关键特性

- **Marpit Markdown**: 扩展了 markdown-it 解析器，支持 Directives 控制、幻灯片背景等
- **Theme CSS**: 纯 CSS 主题系统，专注于样式 HTML 元素
- **Inline SVG 幻灯片** (实验性): 用 `<svg>` 容器实现像素级完美缩放
