---
marp: true
html: true
size: 16:9
theme: zju
paginate: true
style: |
  :root header {
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 48px;
    line-height: 48px;
    color: #fff;
    font-size: 28px;
    padding-left: 30px;
    margin: 0;
    background: linear-gradient(135deg, #003f88, #0056b3);
    z-index: 10;
  }
  :root header::after {
    display: none;
  }
  :root {
    padding-top: 64px !important;
    padding-bottom: 18px !important;
  }
  :root.homePage {
    padding-top: 0 !important;
    padding-bottom: 0 !important;
  }
  :root.contents {
    padding-top: 0 !important;
    padding-bottom: 0 !important;
  }
  :root img {
    max-width: 100%;
    max-height: 320px;
    height: auto;
    display: block;
    margin: 10px auto;
  }
  :root .fig-caption {
    text-align: center;
    font-size: 16px;
    color: #888;
    margin-top: 4px;
  }
  :root.homePage img {
    height: 100px;
    max-height: 100px;
    width: auto;
    margin: 0 auto 20px auto;
  }
  :root.homePage.part1bg::before {
    background-image: url("themes/images/gdut/background5.jpg");
  }
  :root.homePage.part2bg::before {
    background-image: url("themes/images/gdut/background6.jpg");
  }
  :root.homePage.part3bg::before {
    background-image: url("themes/images/gdut/background7.jpg");
  }
  :root.homePage .footnote {
    position: absolute;
    bottom: 12px;
    right: 26px;
    font-size: 10px;
    color: rgba(255,255,255,0.3);
    text-align: right;
  }
  :root.homePage .footnote a {
    color: #fff;
  }
  :root .cols {
    display: flex;
    gap: 24px;
    align-items: center;
  }
  :root .cols > div:first-child {
    flex: 2;
    min-width: 0;
  }
  :root .cols > div:last-child {
    flex: 1;
    min-width: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
  :root .cols p {
    margin: 0;
    width: 100%;
  }
  :root .cols img {
    width: 100%;
    height: auto;
    max-height: 380px;
    display: block;
    margin: 0;
  }
---

<!-- _class: homePage -->
<!-- _header: "" -->
<!-- _footer: "" -->
<!-- _paginate: "" -->

# 普通人如何用好 AI Agent

## 5.24 得到同学节分享

**分享人：@天街小雨润如苏同学　｜　2026 年 5 月**

<div class="footnote">
  * 内容由 AI 生成，源码托管在 <a href="https://github.com/syjsu/ai-tech-sharing-ppt">https://github.com/syjsu/ai-tech-sharing-ppt</a>
</div>

---

<!-- _class: contents -->
<!-- _header: "" -->
<!-- _footer: "" -->
<!-- _paginate: "" -->

## 目录

- **Part 1** — 普通人使用 AI Agent 的六个维度
- **Part 2** — Coze 智能体实战指南
- **Part 3** — 需求挖掘与小班课预告

---

<!-- _class: homePage part1bg -->
<!-- _header: "" -->
<!-- _footer: "" -->
<!-- _paginate: "" -->

# Part 1

## 普通人使用 AI Agent 的六个维度

---

<!-- _class: contentPage -->
<!-- _header: "Part 1 总览" -->

<div class="cols">
<div>

AI Agent 能力从浅到深，呈现阶梯式跃迁

**第一层 · 对话问答** — 你问我答，自然语言交互

**第二层 · 自动化工作流** — 固定流程节点化，一键搞定

**第三层 · 自主 Agent** — 自主规划，主动收集，动态决策

**第四层 · 项目落地** — 理解需求，定制开发技术产品

**第五层 · 系统建设** — 完整可用的系统级解决方案

**第六层 · 生活助理** — 全场景协同，懂你帮你替你

> 公式：AI Agent = 大脑(LLM) + 规划 + 记忆 + 工具使用

</div>
<div>

![](images/agent-layers.svg)

<div class="fig-caption">图：AI Agent 六层能力阶梯</div>

</div>
</div>

---

<!-- _class: contentPage -->
<!-- _header: "1.1 初踏殿堂的体验——对话式AI" -->

<div class="cols">
<div>

**核心产品**: DeepSeek · 豆包 · 通义千问 · Kimi · 文心一言 · Claude Code

**本质**: 你问我答，单轮/多轮自然语言交互

- **适用场景**: 知识问答、文案撰写、代码生成、翻译润色、头脑风暴
- **核心技巧**:
  - **明确角色**: "你是一名资深产品经理..."
  - **提供上下文**: 背景 + 目标 + 约束条件
  - **迭代追问**: 不满意就补充信息继续问
  - **结构化输出**: "请用表格列出..."

> **关键认知**: 对话式 AI 是起点，不是终点。用好提示词是关键分水岭。

</div>
<div>

![](images/dialogue-products.svg)

<div class="fig-caption">图：主流对话式 AI 产品生态</div>

</div>
</div>

---

<!-- _class: contentPage -->
<!-- _header: "1.2 让机器替你跑流程——自动化工作流" -->

<div class="cols">
<div>

**代表平台**: Coze 工作流 · Dify · LangChain

**本质**: 将固定流程节点化、自动化，执行规范化标准任务

**典型结构**: 触发器 → 输入解析 → 逻辑分支 → 工具调用 → 输出格式化

**常见场景**:
- 自动抓取新闻 → 摘要 → 生成日报
- 上传发票截图 → OCR 识别 → 提取字段 → 录入表格
- 定时监控竞品 → 对比分析 → 推送告警

> **一句话总结**: 把每次都要做的事变成一键搞定。

</div>
<div>

![](images/workflow-flow.svg)

<div class="fig-caption">图：自动化工作流示意</div>

</div>
</div>

---

<!-- _class: contentPage -->
<!-- _header: "1.3 给AI装上自己的大脑——自主Agent" -->

**代表平台**: Coze Agent · Trae Solo · AutoGPT

**本质**: Agent 拥有自己的意识——能自主规划、主动交互、主动收集内容

- **核心能力**: 任务拆解 · 工具选择 · 反馈闭环
- **与工作流的区别**: 工作流路径固定，自主 Agent 路径动态

> **示例**: "帮我做一个小红书竞品分析" → Agent 自动搜索素材、整理数据、生成报告。

---

<!-- _class: contentPage -->
<!-- _header: "1.4 从想法到可用的产品——项目落地" -->

**本质**: Agent 不仅能回答问题、执行任务，还能理解用户需求、开发定制化技术产品

- **能力跃迁**:
  - 理解用户真实需求（不仅是表面诉求）
  - 设计技术方案和系统架构
  - 编写代码、搭建数据库、部署应用
  - 交付可用的最小可行产品（MVP）

> **关键转变**: 从"使用工具"到"创造工具"。Agent 从助手变成开发者。

---

<!-- _class: contentPage -->
<!-- _header: "1.5 打造完整的数字工厂——系统建设" -->

**本质**: 在第四层基础上，构建完整可用、可扩展、可维护的系统级解决方案

**新增能力**: 多模块设计 · 权限安全 · 系统集成 · 持续运维

**典型案例**:
- 企业内部报销审批全流程系统
- 多数据源汇聚 + 清洗 + 分析平台
- 智能客服 + 工单管理一体化平台

---

<!-- _class: contentPage -->
<!-- _header: "1.6 全天候在线的隐形管家——高阶生活助理" -->

**理想形态**: 全天候在线，主动感知用户需求，跨设备、跨平台无缝协同，记忆用户偏好、习惯、历史决策，复杂问题自主规划，简单问题即时响应

> **展望**: 这是 Agent 的终极形态——从"你命令它做事"到"它懂你、帮你、替你"。

---

<!-- _class: contentPage -->
<!-- _header: "Part 1 小结" -->

| 层级 | 模式 | 代表 | 关键词 |
|:----:|------|------|--------|
| ① | 对话问答 | DeepSeek / 豆包 / 千问 / Claude Code | 提示词 |
| ② | 自动化工作流 | Coze / Dify | 流程编排 |
| ③ | 自主 Agent | Coze / Trae Solo | 自主规划 |
| ④ | 项目落地 | 定制开发 | MVP 交付 |
| ⑤ | 系统建设 | 完整解决方案 | 架构设计 |
| ⑥ | 生活助理 | 全场景 Agent | 主动智能 |

> 不是工具变强了，是你的使用方式升级了。

---

<!-- _class: homePage part2bg -->
<!-- _header: "" -->
<!-- _footer: "" -->
<!-- _paginate: "" -->

# Part 2

## Coze 智能体实战指南

---

<!-- _class: contentPage -->
<!-- _header: "Part 2 总览" -->

Coze 智能体构建六步走

| 步骤 | 核心动作 | 关键词 |
|:----:|------|------|
| ① | 平台初识 | 零代码 AI 乐高工厂 |
| ② | 角色设计 | 给 AI 写灵魂简历 |
| ③ | 知识库构建 | 给 AI 装上私域大脑 |
| ④ | 工作流编排 | 搭积木一样搭流程 |
| ⑤ | 插件扩展 | 让 Agent 从会说到能干 |
| ⑥ | 发布与生态 | 一键发布 + 商店发现 |

> 人设 + 知识 + 工作流 + 插件 = 真正能干活的生产力智能体

---

<!-- _class: contentPage -->
<!-- _header: "2.1 零代码的AI乐高工厂——Coze平台初识" -->

Coze（扣子）是字节跳动推出的 AI 智能体构建平台，零代码即可创建功能强大的 AI Bot

**核心优势**:
- 无需编程，可视化操作
- 内置大模型能力（豆包等）
- 丰富的插件与工具生态
- 多渠道一键发布

**六大能力阶梯**: 创建智能体 → 知识库增强 → 工作流编排 → 插件工具 → 发布集成 → 商店生态

**现场扫码注册 Coze**

> **Coze 邮箱**: syjsu@coze.email

![](images/coze-qr.svg)

<div class="fig-caption">图：扫码注册 Coze 智能体平台</div>

---

<!-- _class: contentPage -->
<!-- _header: "2.2 给AI写一份灵魂简历——角色设计" -->

**选择模板 → 设定人设 → 配置能力 → 调试优化**

- **从模板开始**: Coze 提供丰富的预设模板（客服、助手、翻译等）
- **人设 Prompt**: 用自然语言定义 Agent 的角色、目标、行为边界
- **开场白**: 设定 AI 的第一步问候，引导用户交互
- **调试预览**: 右侧实时对话测试，边调边改

> **关键**: 人设越具体，Agent 的行为越精准。

---

<!-- _class: contentPage -->
<!-- _header: "2.3 给AI装上私域大脑——知识库与RAG" -->

<div class="cols">
<div>

**上传资料 → 自动分段 → 向量检索 → 精准回答**

- **支持格式**: PDF / Word / TXT / 网页链接 / 飞书文档 / 表格
- **核心价值**: 减少幻觉，回答有据可依

**场景示例**:
```
公司员工手册.pdf → 上传知识库
→ 员工提问 → Agent 检索
→ 生成回答引用出处
```

</div>
<div>

![](images/knowledge-rag.svg)

<div class="fig-caption">图：RAG 知识库检索增强流程</div>

</div>
</div>

---

<!-- _class: contentPage -->
<!-- _header: "2.4 像搭积木一样编排流程——工作流自动化" -->

<div class="cols">
<div>

**拖拽节点 → 配置逻辑 → 连接工具 → 一键运行**

| 节点 | 功能 |
|------|------|
| 开始 | 接收用户输入 |
| 大模型 | 调用 LLM 处理文本 |
| 知识库 | 检索文档 |
| 代码 | 运行 Python/JS 脚本 |
| 条件分支 | 逻辑判断分流 |
| 插件 | 调用外部工具 |
| 结束 | 返回结果 |

**案例**: 输入主题 → 搜索热点 → 检索素材 → 生成文案 → 输出草稿

</div>
<div>

![](images/workflow-flow.svg)

<div class="fig-caption">图：Coze 工作流节点编排示意</div>

</div>
</div>

---

<!-- _class: contentPage -->
<!-- _header: "2.5 给AI装上万能工具箱——插件能力扩展" -->

| 分类 | 插件示例 |
|------|----------|
| 搜索 | 必应搜索、网页解析 |
| 图像 | 图片理解、AI 绘图 |
| 数据 | 数据分析、图表生成 |
| 代码 | Python / JavaScript 执行 |
| 办公 | 飞书文档、表格、日历 |
| 资讯 | 新闻、天气、股票查询 |

> 插件让 Agent 从"会说"变成"能干"——可以查数据、算结果、画图表、发消息。

---

<!-- _class: contentPage -->
<!-- _header: "2.6 让你的Agent无处不在——多渠道发布" -->

<div class="cols">
<div>

- **飞书**: 直接在飞书群里当机器人用
- **微信公众号**: 接入客服消息
- **API**: 通过 HTTP 接口集成到自己的系统
- **Web**: 嵌入网页，生成分享链接

> 一次搭建，多渠道发布，让你的 Agent 触达每一位用户。

</div>
<div>

![](images/platform-publish.svg)

<div class="fig-caption">图：Coze 多渠道发布矩阵</div>

</div>
</div>

---

<!-- _class: contentPage -->
<!-- _header: "2.7 像逛应用商店一样找AI——智能体市场" -->

**Bot Store（智能体商店）**: 发现他人创作的优质智能体，一键复制使用，支持二次改造

**社区生态**: 分享自己的智能体，学习他人的 Prompt 和工作流设计，协作共创复杂项目

> **趋势**: 未来 AI 能力的分发方式——不是下载 App，而是发现和订阅智能体。

---

<!-- _class: contentPage -->
<!-- _header: "Part 2 小结" -->

| 步骤 | 能力 | 一句话 |
|:----:|------|--------|
| ① | 创建智能体 · 角色设计 | 用 Prompt 定义 Agent 的灵魂 |
| ② | 知识库构建 · RAG 增强 | 给 Agent 装上私域大脑 |
| ③ | 工作流编排 · 自动化 | 拖拽搭建自动化流程 |
| ④ | 插件工具集 · 能力扩展 | 让 Agent 从会说变成能干 |
| ⑤ | 多渠道发布 · 触达用户 | 一键发布到飞书/微信/网页 |
| ⑥ | Bot Store · 智能体市场 | 发现和分享智能体 |

> Coze 的核心逻辑：人设 + 知识 + 工作流 + 插件 = 真正能干活的生产力智能体。

---

<!-- _class: homePage part3bg -->
<!-- _header: "" -->
<!-- _footer: "" -->
<!-- _paginate: "" -->

# Part 3

## 需求挖掘与小班课预告

---

<!-- _class: contentPage -->
<!-- _header: "Part 3 总览" -->

从需求到交付的全流程实战

| 环节 | 核心方法 | 关键词 |
|:----:|------|------|
| ① | STAR 需求梳理 | Situation → Task → Action → Result |
| ② | 真实案例拆解 | 发票报销全流程 |
| ③ | 深层次需求挖掘 | 冰山模型 · 追问五法 |
| ④ | Agent 极速 MVP | 传统 2 周 → Agent 1 天 |
| ⑤ | 小班课实战 | 从观众到主角 |

> 80% 的需求失败不是因为做不了，而是因为需求本身没梳理清楚。

---

<!-- _class: contentPage -->
<!-- _header: "Part 3 STAR 法梳理需求" -->

| 要素 | 含义 | 对应 |
|:----:|------|------|
| **S**ituation | 情境 | 业务背景、现状痛点、核心问题 |
| **T**ask | 任务 | 需求目标、衡量标准、交付范围 |
| **A**ction | 行动 | 解决方案、功能设计、实施路径 |
| **R**esult | 结果 | 预期收益、指标达成、迭代方向 |

> 80% 的需求失败不是因为做不了，而是因为需求本身没有被梳理清楚。

---

<!-- _class: contentPage -->
<!-- _header: "3.1 一百张发票的烦恼——真实需求案例" -->

**一位同学的真实场景**

> 团队每月经手上百张报销发票，来自不同采购渠道：
> - 电商平台截图（京东、淘宝）
> - 正规电子发票（PDF/OFD）
> - 纸质发票（手机拍照）
> - 零星收据/小票（照片）

---

<!-- _class: contentPage -->
<!-- _header: "3.2 杂货铺变身标准化仓库——异构数据清洗" -->

<div class="cols">
<div>

**Agent 能做什么**:
1. 自动下载各渠道文件
2. OCR 识别提取关键字段
3. 格式转换与数据清洗
4. 填入预设模板
5. 标记异常待人工校验

</div>
<div>

![](images/invoice-flow.svg)

<div class="fig-caption">图：发票处理自动化全流程</div>

</div>
</div>

---

<!-- _class: contentPage -->
<!-- _header: "3.3 从人工核对到一键出表——审核与报表" -->

**处理流程**: 原始数据 → 规则校验 → 异常标记 → 人工复核 → 最终报表

**报表呈现**:
- 按月份汇总：月度报销趋势图
- 按类目汇总：各部门/各品类占比
- 异常统计：问题发票分类 + 处理状态

---

<!-- _class: contentPage -->
<!-- _header: "3.4 冰山下的真相——深层次需求挖掘" -->

| 追问 | 发现的新需求 |
|------|-------------|
| "这些数据整理好后要导入哪里？" | → 需要与财务系统对接的接口 |
| "报账周期是多久一次？" | → 需要月度自动汇总 + 周期提醒 |
| "除了个人报销，还有部门预算吗？" | → 需要部门级预算看板 |
| "老板要看什么维度的数据？" | → 需要管理层驾驶舱 |
| "这些数据和税务申报有关吗？" | → 需要合规性预检 |

> 表面需求 = 发票整理 + 报表
> **真实需求 = 财务数据中台 + 预算管理 + 合规风控 + 决策支持**

---

<!-- _class: contentPage -->
<!-- _header: "3.5 两周变一天的魔法——Agent极速MVP" -->

**传统开发流程**: 需求沟通 → 写文档 → 排期 → 开发（2周） → 测试 → 上线

**Agent 辅助流程**: 需求沟通 → Agent 自主规划 → 快速搭建 MVP（1天） → 用户试用 → 迭代

> 传统需要 2 周开发周期的需求，Agent 可以在 1 天内给你一个可用的 Demo，效率提升 10 倍以上。

---

<!-- _class: contentPage -->
<!-- _header: "3.6 从观众到主角的蜕变——小班课预告" -->

**从需求洞察到交付落地的全流程实战**

- **实战驱动**: 不教理论，直接拿真实需求开练
- **全链路覆盖**: 需求调研 → STAR 梳理 → 方案设计 → Agent 搭建 → 交付验收
- **小班教学**: 每期限额，精细化项目制指导
- **成果交付**: 课程结束时，你手上有一个真正跑起来的系统

**适合人群**:
- 想用 AI 提升工作效率的职场人
- 想转型 AI 产品经理/解决方案的从业者
- 对 Agent 开发感兴趣的技术爱好者

---

<!-- _class: contentPage -->
<!-- _header: "Part 3 小结" -->

| 环节 | 要点 | 一句话 |
|:----:|------|--------|
| ① | STAR 梳理 | 先搞清楚问题，再动手解决 |
| ② | 案例实战 | 从发票场景看 Agent 全链路能力 |
| ③ | 需求挖掘 | 表面需求之下藏着更大的系统 |
| ④ | Agent MVP | 两周变一天，不是口号是事实 |
| ⑤ | 小班课 | 不做观众，做 Agent 时代的创建者 |

> 不是工具变强了，是你的使用方式升级了。

---

<!-- _class: homePage -->
<!-- _header: "" -->
<!-- _footer: "" -->
<!-- _paginate: "" -->

# 谢谢！欢迎关注

## 公众号/小红书/抖音/视频号

**@天街小雨润如苏同学**
