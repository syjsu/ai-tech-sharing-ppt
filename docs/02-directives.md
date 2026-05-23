# Directives — 幻灯片指令

Marpit Markdown 使用 **Directives**（指令）语法来控制幻灯片。它使用 YAML 格式解析。

## 使用方式

### HTML 注释

```markdown
<!--
theme: default
paginate: true
-->
```

### Front-matter（文件开头的 YAML）

```markdown
---
theme: default
paginate: true
---
```

注意：不要与分页的 `---` 混淆。front-matter 后的内容才算第一页。

## 指令类型

### 全局指令 (Global Directives)

作用于整个幻灯片 deck。

| 名称 | 说明 |
|------|------|
| `headingDivider` | 指定标题自动分页级别 |
| `lang` | 设置 slide 的 `lang` 属性 |
| `style` | 额外 CSS，用于微调主题 |
| `theme` | 指定幻灯片主题 |

### 局部指令 (Local Directives)

作用于当前页及后续页面。

| 名称 | 说明 |
|------|------|
| `paginate` | 显示页码 (`true`/`false`/`hold`/`skip`) |
| `header` | 幻灯片页眉内容 |
| `footer` | 幻灯片页脚内容 |
| `class` | `<section>` 元素的 CSS class |
| `backgroundColor` | 背景色 |
| `backgroundImage` | 背景图片 |
| `backgroundPosition` | 背景位置 (默认 `center`) |
| `backgroundRepeat` | 背景重复 (默认 `no-repeat`) |
| `backgroundSize` | 背景大小 (默认 `cover`) |
| `color` | 文字颜色 |

### Spot 指令 — 单页生效

在局部指令名前加 `_` 前缀，只对当前页生效：

```markdown
<!-- _backgroundColor: aqua -->
<!-- _class: lead -->
```

## Pagination 详解

| 值 | 页码显示 | 页码递增 |
|----|----------|----------|
| `true` | 显示 | 是 |
| `false` | 隐藏 | 是 |
| `hold` | 显示 | 否 |
| `skip` | 隐藏 | 否 |

## Heading Divider 自动分页

```markdown
<!-- headingDivider: 2 -->

# 第一页
内容

## 第二页  <!-- 自动分页 -->
第二页内容

# 第三页  <!-- 按 headingDivider: 2 不会自动分 -->
内容仍在第二页
```

## 自定义指令

```javascript
// 自定义全局指令
marpit.customDirectives.global.$theme = (value, marpit) => {
  return { theme: value }
}

// 自定义局部指令 — 组合多个样式
marpit.customDirectives.local.colorPreset = (value, marpit) => {
  switch (value) {
    case 'sunset':
      return { backgroundColor: '#e62e00', color: '#fffff2' }
    case 'dark':
      return { backgroundColor: '#303033', color: '#f8f8ff' }
    default:
      return {}
  }
}
```
