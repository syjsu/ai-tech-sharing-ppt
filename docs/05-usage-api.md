# 使用指南 — Marpit API

## Marpit 类

```javascript
import { Marpit } from '@marp-team/marpit'
const marpit = new Marpit()
```

### 构造选项

```javascript
const marpit = new Marpit({
  markdown: {
    html: true,    // 允许 HTML 标签
    breaks: true,  // 将换行转为 <br />
  },
})

// 自定义容器元素
import { Marpit, Element } from '@marp-team/marpit'
const marpit = new Marpit({
  container: [
    new Element('article', { id: 'presentation' }),
    new Element('div', { class: 'slides' }),
  ],
  slideContainer: new Element('div', { class: 'slide' }),
})

// 启用 Inline SVG（实验性）
const marpit = new Marpit({ inlineSVG: true })
```

## 渲染 Markdown

```javascript
const { html, css, comments } = marpit.render('# Hello, Marpit!')
```

## 应用主题

```javascript
const theme = marpit.themeSet.add(`/* @theme my-first-theme */ ...`)
marpit.themeSet.default = theme
```

## 高级

### 输出为数组（每页单独 HTML）

```javascript
const { html } = marpit.render(markdown, { htmlAsArray: true })
```

### 演讲者备注

```javascript
const { comments } = marpit.render(`# 第一页\n\n<!-- 这是备注 -->`)
// [["这是备注"]]
```

### 扩展插件

```javascript
// Marpit 插件
const marpitPlugin = ({ marpit }) => {
  marpit.themeSet.add(`/* @theme custom */ ...`)
}
marpit.use(marpitPlugin)

// markdown-it 插件
import markdownItContainer from 'markdown-it-container'
marpit.use(markdownItContainer, 'columns')

// PostCSS 插件
import postcssMinify from '@csstools/postcss-minify'
marpit.use(postcssMinify())
```
