# Theme CSS — 主题样式

## HTML 结构

每个 `<section>` 元素对应一页幻灯片：

```html
<section><h1>第一页</h1></section>
<section><h1>第二页</h1></section>
```

## 创建主题 CSS

```css
/* @theme my-theme */      /* 必需：主题名称 */

section {
  width: 1280px;           /* 幻灯片宽度 */
  height: 720px;           /* 幻灯片高度（默认 16:9） */
  font-size: 40px;
  padding: 40px;
}

h1 { font-size: 60px; color: #09c; }
h2 { font-size: 50px; }
```

### `:root` 选择器

替代 `section`，但优先级更高：

```css
:root {
  width: 1280px;
  height: 960px;
  font-size: 40px;
  padding: 1rem;
}
```

`rem` 单位会自动基于 `<section>` 计算。

## 幻灯片尺寸

默认 1280×720 (16:9)。改为 4:3：

```css
section {
  width: 960px;
  height: 720px;
}
```

## 页码样式

```css
section::after {
  font-weight: bold;
  text-shadow: 1px 1px 0 #fff;
}

/* 显示 "Page 1 / 3" 格式 */
section::after {
  content: 'Page ' attr(data-marpit-pagination)
           ' / ' attr(data-marpit-pagination-total);
}
```

## 页眉/页脚样式

```css
header, footer {
  position: absolute;
  left: 50px;
  right: 50px;
  height: 20px;
}
header { top: 30px; }
footer { bottom: 30px; }
```

## 主题继承

```css
/* @theme customized */
@import 'base';
section { background-color: #f80; color: #fff; }
```

## 通过 Markdown 微调样式

```markdown
<style>
section { background: yellow; }
</style>

<!-- 作用域样式，仅当前页 -->
<style scoped>
h1 { color: blue; }
</style>
```
