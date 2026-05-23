# Marpit Markdown 语法

Marpit Markdown 注重与通用 Markdown 文档的兼容性。即使在一个普通的 Markdown 编辑器中打开，渲染结果看起来也很美观。

## 幻灯片分隔

用水平分割线 `---` 分隔页面：

```markdown
# 第 1 页

内容

---

# 第 2 页

更多内容
```

> 根据 CommonMark 规范，`---` 前面可能需要空行。也可以使用 `___`、`***` 或 `- - -`。

## 扩展特性

- **Directives** — 控制主题、页码、页眉、页脚等
- **Image Syntax** — 扩展图片语法，支持调整大小、滤镜、背景
- **Fragmented List** — 逐条出现的列表

## 图片语法

### 调整大小

```markdown
![width:200px](image.jpg)
![height:30cm](image.jpg)
![w:32 h:32](image.jpg)       <!-- 简写 -->
```

### 滤镜

```markdown
![blur](image.jpg)
![brightness:1.5](image.jpg)
![grayscale:1](image.jpg)
![sepia:50%](image.jpg)
![brightness:.8 sepia:50%](image.jpg)  <!-- 组合 -->
```

### 幻灯片背景

```markdown
![bg](background.jpg)
![bg contain](background.jpg)
![bg 150%](background.jpg)
```

### 高级背景（需启用 Inline SVG）

**多背景并列**：

```markdown
![bg](img-a.jpg)
![bg](img-b.jpg)
![bg](img-c.jpg)
```

**垂直排列**：

```markdown
![bg vertical](img-a.jpg)
![bg](img-b.jpg)
```

**分屏背景**：

```markdown
![bg left](image.jpg)
![bg right](image.jpg)
![bg left:33%](image.jpg)
```

## 分片列表 (Fragmented List)

```markdown
* One     <!-- 使用 * 号实现逐条出现 -->
* Two
* Three

1) One    <!-- 使用 ) 而非 . -->
2) Two
3) Three
```
