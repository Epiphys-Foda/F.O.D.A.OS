[English](README.md) | 中文

# F.O.D.A.OS

[![CI](https://github.com/Epiphys-Foda/F.O.D.A.OS/actions/workflows/smoke.yml/badge.svg)](https://github.com/Epiphys-Foda/F.O.D.A.OS/actions/workflows/smoke.yml)
[![release](https://img.shields.io/badge/release-v0.3.0-2ea44f)](#十五正在迭代中)
[![license](https://img.shields.io/badge/license-Apache--2.0-blue)](LICENSE)
[![host](https://img.shields.io/badge/host-Windows%20x64-8A2BE2)](#十五正在迭代中)
![backends](https://img.shields.io/badge/backends-x86--64%20%7C%20ARM64%20%7C%20RISC--V%20%7C%20WASM%20%7C%20WGSL--GPU-FF6F00)
![arithmetic](https://img.shields.io/badge/arithmetic-exact%20GF%2865537%29-dc3545)
![floats](https://img.shields.io/badge/floats-zero-000000)
![randomness](https://img.shields.io/badge/randomness-zero-000000)
![scale](https://img.shields.io/badge/programs-1%2C552%20%C2%B7%2031%20domains-007EC6)
[![papers](https://img.shields.io/badge/论文-I%E2%80%93VII%20·%20Zenodo-9cf)](https://zenodo.org/search?q=%22FodaOS%22)
[![web](https://img.shields.io/badge/web-epiphys.com-0A66C2)](https://www.epiphys.com/)
[![contact](https://img.shields.io/badge/contact-support%40epiphys.com-EA4AAA)](mailto:support@epiphys.com)

## 精确求解计算平台

### *PsiLang — 零浮点、零随机、零误差*

> **同一份源码，同一份字节 —— 每台机器、每次运行、永远如此。**

---

每次计算都是 **GF(65537) 残数域**中的精确整数——没有浮点、没有随机、没有隐藏状态、没有舍入误差，永远没有。`0.1 + 0.2 == 0.3` 不是近似，是数学事实。你的程序从此是一个**可指纹化、可审计、逐位复现**的数学对象。

**PsiLang（ψ，`.ψ`）**是语言。**F.O.D.A.OS** 是平台：1,552 个程序、31 个领域库、4 个 ISA 后端、9 个窗口化应用——全部确定性、全部精确、全部开源。

### 你能用它做什么

| 如果你是... | F.O.D.A.OS 给你... |
|---|---|
| **金融 / 会计** | **下一代精确算术。** `0.1 + 0.2 == 0.3`——不是 `0.30000000000000004`。每一分钱都有着落，每次审计逐位复现。浮点舍入误差在这个语言里**根本不存在**。投资组合、期权定价、均衡——全部精确。（`lib/domain/finance/`：portfolio、option、risk、trading、equilibrium） |
| **游戏引擎 / 机器人** | **下一代确定性物理。** 相同输入 → 相同轨迹，每次如此。宇宙级回放、毫秒回滚、锁步多人同步——引擎逐位精确时，这些难题消失。下一代免反向传播训练：Hebbian 在线学习——无梯度、无回放缓冲。（`lib/domain/robot/`：arena、control、hebbian、sensor、render3d） |
| **游戏安全 / 反作弊** | **下一代 DRM 反作弊。** 流加密封存 + 设备绑定令牌 + 篡改即断的完整性链。零随机源 ⇒ 服务器**逐步复算客户端每一步**——外挂无处藏身。不是封号猜测——是数学判决。（`vault.ψ`、`security/audit`） |
| **密码学 / 区块链** | **下一代后量子密码套件。** 全同态加密 FHE（N=1024，密文上直接运算）、LWE 格密码（N=512）、128 方门限签名、BB84/E91 量子密钥分发（7 阶段管线）、零知识证明——全部 GF(p) 纯整数，零随机源可审计。（`lib/domain/crypto/`：fhe、lwe、zk、pki、sig、quorum_sign、key_exchange） |
| **科学计算** | **下一代定律发现引擎。** 从原始数据重新发现开普勒第三定律——并对噪声数据*拒绝*发明定律。发现引擎会说"不"，这才是科学。210 个物理程序。Moseley、Balmer、Titius-Bode、Stefan-Boltzmann、Newton——全部从数据重新发现。 |
| **量子模拟** | **下一代量子栈。** Shor-9、Steane `[[7,1,3]]`、表面码——即纯整数程序。无复数、无浮点、无概率采样。还有 Grover 搜索、量子行走、量子退火、QFT、QKD——全部确定性。 |
| **AI / 机器学习** | **下一代免反向传播训练。** Hebbian 在线学习——一次一个样本，权重就地演化。下一代注意力：波束赋形 O(N) 替代 O(N²)。下一代全局优化：虚时间退火（禁随机下全局最优）。下一代 LLM 推理：39.2 tokens/秒（T=8），GPU 6.60 ms/token，增量引擎 37.6x 加速。（`lib/domain/ml/`：18 程序完整训练栈） |
| **共识 / 分布式** | **下一代确定性共识。** 拜占庭容错、Paxos、Raft、CRDT、Gossip——全部确定性、全部精确。当共识协议逐位精确时，分歧不可能发生。（`lib/domain/consensus/`：bft、paxos、raft、crdt、gossip、distributed_lock） |
| **数据库 / 数据基础设施** | **下一代多模型数据库。** ψDB：一个引擎 7 种存储模型——KV、文档、图、向量、时序、列式、对象。量子数据库、时空数据库、认知数据库、Cl(4,1) 几何代数数据库。SurrealDB 风格查询语言。MVCC 事务。静态加密。51 程序，835 万查询/秒，全部纯 ψ。（见能力卡 8） |
| **网络 / 带宽** | **下一代网络协议。** 仅传规则，不传数据。qqbc 帧流协议首帧传全量，后续帧仅传增量——带宽 ∝ 变化量，不 ∝ 数据总量。增量热更新：比全模型下载少 10³–10⁵ 倍带宽。下一代远程动画：传输极点轨迹，接收端本地演化——**动画没有帧率限制**。下一代操作流：七个领域组装为一个压缩 DAG。（`qqbc_frame`、`qqbc_anim`、`opstream`、`dag_transfer`） |

### 10 秒上手

```text
git clone https://github.com/Epiphys-Foda/F.O.D.A.OS.git
cd F.O.D.A.OS
bin\qlc2.exe examples\hello.ψ --run
```

无需构建。无需包管理器。无需依赖。`bin\qlc2.exe` 是 1.3 MB 自包含原生可执行文件——直接跑。

```text
bin\qlc2.exe --fast examples\law_discovery.ψ    # 从数据重新发现开普勒第三定律
bin\qlc2.exe --fast examples\periodic_table.ψ   # 172 个元素
bin\qlc2.exe --fast examples\qec_shor9.ψ        # 量子纠错码即普通代码
bin\qlc2.exe lib\frontend\shell_ide.psi --fast  # 启动窗口 IDE
```

---

## 一、你能用它做什么（能力全景，全部可运行验证）

### 1. 下一代定律发现引擎——机器自己"悟"出开普勒第三定律，还会对噪声说不

`examples/law_discovery.ψ` 把原始行星观测数据喂给发现引擎（`lib/core/stdlib_lang2` 的 `bm_canon` + 23 个 `gx_*` 粒化模块）：

```text
bin\qlc2.exe --fast examples\law_discovery.ψ

== Kepler III: [pow_score, winner, kidx, gate] ==
3
3
2
1
== Lawless control: [gate=(0)] ==
0
== TOTAL (expect 5) ==
5
```

它从数据里**重新发现开普勒第三定律**（T² ∝ R³），同时对无定律的对照数据集**拒绝给出定律**（gate=0）。会说不的发现引擎——这正是它与一切"过拟合机器"的本质区别。同一引擎驱动 Moseley 定律、Balmer 光谱、Titius-Bode、Stefan-Boltzmann、牛顿冷却、OEIS 序列、季节周期整族定律验证。

### 2. 下一代代数化学——整张元素周期表，握成一个数学对象

`examples/periodic_table.ψ`（依托 `lib/domain/chem/`）把全元素化学编码为残数域约束并整表验证：

```text
bin\qlc2.exe --fast examples\periodic_table.ψ

periodic_verify:
0
stats [total, known, predicted, poles]:
172
118
54
8
```

**全表 172 个条目：118 个已知元素 + 54 个预测超重槽位。** 周围的化学域是全仓最大领域库：599 个程序覆盖周期性、化学键、同位素、光谱、电化学、反应动力学、热力学。

### 3. 下一代量子纠错——Shor-9、Steane、表面码，一条命令跑起来

Shor-9、Steane、表面码随示例发布（stdlib 的 `qec.ψ` / `css.ψ`）：

```text
bin\qlc2.exe --fast examples\qec_shor9.ψ      # Shor 9 量子比特码      → fast result: 0
bin\qlc2.exe --fast examples\qec_steane.ψ     # Steane [[7,1,3]] 门    → fast result: 0
bin\qlc2.exe --fast examples\qec_surface.ψ    # 表面码                 → fast result: 0
```

同一库族还承载 Grover 搜索、CSS 码、退极化信道、阈值定理等电池——全部确定性、全部整数精确。

### 4. 下一代编程语言——ψ 编译 ψ，语言自己造自己

```text
psi_to_wasm(src)   # ψ 源码 → 标准 WebAssembly 字节流（ψ 层宿主操作）
wasm_run(bytes)    # ψ 层 WASM 栈机器解释器（wasm_interp.ψ，同为 ψ 源码）
```

`examples/metacircular.ψ` 是最小闭环：ψ 写的迷你编译器把 `"3+4"` 编成 WASM 字节流，ψ 写的解释器执行编译产物——**零第三方编译器参与**。仓库根的 `self_compile.ψ` 是完整的 ψ 自举编译器（约 4700 行，开发预览）。

### 5. 下一代机器人训练场：免反向传播的确定性内循环

`lib/core/stdlib/render3d_train.ψ` 从渲染栈（`render3d` 场景 → `render3d_robot` → `render3d_ui`）装配出 3D 训练场；`lib/domain/ml/` 提供完整训练栈（`model` / `training` / `train_loop` / `rl` / `bandit` / `meta_learning` / `weight_io`）；内循环是纯 ψ 在线学习：`reservoir.ψ`（门控状态更新 `mem' = a·mem + b·d`）与 `edge_learn.ψ`（Hebbian 在线学习——**一次一条样本、无反向传播、无重放缓冲**，权重原地演化）。同轨迹进，同权重出——训练本身也是可复现实验。

### 6. 下一代窗口应用——九个即开即用，确定性不等于无头

`lib/frontend/` 是一套完整的窗口应用栈，构建在 Windows 宿主平台（`win_open` / `win_present` / `win_poll`）之上：

- `wui.ψ` / `wblit.ψ` / `wgraph.ψ` / `win_shell.ψ` —— 窗口工具箱：UI 原语、帧缓冲搬运、图件、壳层
- **九个 Aurora shell 应用** —— `shell_ide`（窗口 IDE）、`shell_graph`（图编辑器）、`shell_dash`（仪表盘）、`shell_blocks`、`shell_fieldlab`（场实验室）、`shell_jobs`、`shell_nodes`、`shell_runlog`、`shell_wapp`
- `resfield2d.ψ` + `resfield2d_gpu.wgsl` —— 残数场 2D 仿真，带 **WGSL GPU 计算管线**

启动：`bin\qlc2.exe lib\frontend\shell_ide.psi --fast`

### 7. 下一代密码套件——游戏内存 DRM · FHE · LWE · 量子密钥分发

游戏服务器、金融后端、反作弊系统真正关心的那一层。全部 GF(p) 纯整数实现，**全程零随机源、可审计**：

- **游戏内存加密 / DRM 反作弊**（`vault.ψ` 密封金库）：`vt_keystream` 流加密封存内存与数据、`vt_pack` / `vt_unpack` **防篡改封存包**、**`vt_token` / `vt_verify_token` 设备绑定令牌**（属主 + 设备 + 有效期，跨设备或过期即失效）；配合 `security/audit` 防篡改审计日志——**外挂改一个字节，完整性链当场断裂、无处遁形**。零随机源 ⇒ 同种子必同回放，服务器可逐步复算客户端每一步操作：这不是封号玄学，是数学审判。
- **存储透明加密**（`db/crypto.ψ`）：16 轮计数器流 + GF S-box（`sbox(x) = x³`，逆为 `x^21846`），存档/数据库落盘即加密
- **对称密码件**（`crypto/symmetric.ψ`）：密钥编排、S 盒生成/求逆/查表、分组加解密
- **公钥与门限签名 TSS**（`crypto/pki.ψ`、`crypto/quorum_sign.ψ`、`crypto/key_exchange.ψ`）：密钥对、签名/验签、**128 方门限签名**（`sign_with_share`）
- **全同态加密 FHE 与格密码**（`crypto/fhe.ψ`、`crypto/lwe.ψ`）：**在密文上直接加/减运算**（N=1024）；LWE 误差采样格加密（N=512）——后量子密码 PQC 的主力族；`residueon_crypto.ψ` 格基/格点/格验证
- **量子密钥分发 QKD**：BB84 完整七阶段（编码→测量→基比对→误码率→筛钥→**安全阈值断言**）、**E91 纠缠型 QKD**（`quantum_network`）、`qcrypto.ψ` NTT 格封装（**FIPS 203 / ML-KEM 风格**）

> 今天已交付：应用侧密封内存、存储加密、全套密码件。明天通向：硬件信任根（TEE/硬件 DRM 接口，见路线图）——vault 封存层就是应用侧锚点。

### 8. 下一代 ψDB——多模型数据库，全部纯 ψ 实现

**51 个数据库程序。7 种存储模型。1 个确定性引擎。零浮点。835 万查询/秒。**

ψDB 是一个**多模型数据库**，横跨键值、文档、图、向量、时序、列式、对象存储——全部在一个引擎里，全部确定性，全部精确整数。不需要为不同数据形态分别建库；没有阻抗失配；没有浮点近似查询。

**`super_db` 家族**（`lib/core/stdlib/` 中 20 个模块）：

| 模块 | 功能 |
|---|---|
| `super_db_engine` | 核心引擎——残数域表上插入/查询/删除 |
| `super_db_tx` / `super_db_io` | ACID 事务 + 持久化 IO |
| `super_db3d` / `super_db3d_index` | **3D 空间数据库**，残数域索引 |
| `super_db_quantum` / `super_db_qec` / `super_db_qft` | **量子数据库**——存取量子态、纠错码、场配置 |
| `super_db_cognitive` | **认知数据库**——智能体记忆与知识图谱 |
| `super_db_gauge` | **规范场数据库**——物理模拟状态 |
| `super_db_dynamics` | 动力系统状态存储 |
| `super_db_stream` | 流式数据库——实时数据摄入 |
| `super_db_mqtt` | **物联网数据库**——MQTT 协议集成 |
| `super_db_crypto` / `super_db_auth` | 静态加密 + 认证访问 |
| `super_db_cl41` | **Cl(4,1) 几何代数数据库**——时空事件作为多重向量 |
| `super_db_trainq` | ML 管线训练队列数据库 |
| `super_db_disciplines` / `super_db_ui2` | 多学科视图 + 数据库 UI |

**`lib/domain/db/` 家族**（29 个模块）：`engine`、`tx`、`mvcc`（多版本并发控制）、`kv_store`、`document_db`、`graph`、`vector_db`、`timeseries`、`columnar`、`object_store`、`surreal_engine` + `surreal_ql`（SurrealDB 风格查询语言）、`quantum`、`spacetime`、`psi_db_v2`、`agent_memory`、`query_optimizer`、`query_planner`、`materialized_view`、`index`、`cache`、`replica`、`migration`、`in_memory`、`transaction_coordinator`——完整数据库工程栈。

> 这不是 SQLite 或 PostgreSQL 的包装。**每一行都是 ψ。** 数据库即语言，语言即数据库。同源码 → 同字节 → 同查询结果，每台机器，永远如此。

### 9. 下一代网络协议——仅传规则不传数据（qqbc 帧流）

**带宽 ∝ 变化量，不 ∝ 数据总量。** qqbc 帧流协议（`qqbc_frame.ψ`）首帧传 FULL（完整状态），后续帧仅传 DELTA（只有变化部分）。系统稳态时带宽趋近于零——你传输的是*演化规则*，不是*被演化的数据*。

**无帧率限制的远程动画**（`qqbc_anim.ψ`）：传输极点轨迹（数学规则），接收端本地演化场景。动画跑多快取决于接收端硬件——30 fps、300 fps、无上限——因为帧是在本地从规则生成的，不是从服务器流式传输的。这不是视频流。这是**流式传输物理，不是流式传输像素**。

**操作流宇宙**（`opstream.ψ`）：将七个领域（渲染+音频+物理+AI+博弈+数据库+存储）组装为一个可执行制品，通过三进制基数经济 + p-adic 指数-残数分层压缩，以单一 DAG 流式传输。接收端从压缩流重建完整跨域场景。

**DAG 传输**（`dag_transfer.ψ`）：将计算图序列化为帧载荷——接收端从帧重建 DAG 并执行。计算以结构形式传输，而非以数据形式。

> 这是确定性计算的网络协议：**传输规则，本地演化，指纹验证。** 同规则 → 同演化 → 同结果，每台机器。

### 10. 下一代语义指纹——逐字节精确，重构验收的终局答案

每次编译输出双**语义指纹** `commit=<h>, energy=<h>`：对注释、空行、路径、文件名不敏感；对任何语义改动敏感（import 即内联，涟漪可解释）。⇒ **指纹不变 ⇔ 语义不变**——大规模重构的验收从"人肉审"变成"逐字节对"。

---

## 二、快速开始

```text
git clone https://github.com/Epiphys-Foda/F.O.D.A.OS.git
cd F.O.D.A.OS
bin\qlc2.exe examples\hello.ψ --run
```

第一条命令就是全部——无构建步骤、无包管理器，`bin\qlc2.exe` 是自包含的原生 x86-64 可执行文件（Windows x64）。

```text
bin\qlc2.exe --syntax    # 语法正典卡（中文）——英文版：SYNTAX_EN.md
bin\qlc2.exe --abi       # 冻结宿主 ABI 表（JSON）
bin\qlc2.exe --run examples\operators.ψ
```

## 三、语言一页通

```text
let x = 6 * 7                  # 不可变绑定（顺序语句，尾值为返回值）
let a = [1, 2, 3]              # 数组（线性内存块 [len, e0, e1, ...]）
a[1] = 99                      # 原地写（返回数组句柄）
let s = "hello"                # 字符串 = 字节块（与数组同构）
let d = { k: 1, m: 2 }         # 字典（对象字面量）
for i < 3                      # 循环（条件为假即出）
let double(x) = x * 2          # let 绑定即函数定义，支持递归
```

- **精确性边界**：i64 精确（溢出自动升格 bignum 无限精度）、除法 trunc 语义、定点数 `d.dd` 形式是精确有理数（`0.1 + 0.2 == 0.3` 为真）——**零浮点、零随机**
- **四层精度架构**：整数（GF(p) 精确）→ 有理数（i128 分子/分母）→ 符号层（SymVal：π、e、√、sin、cos、exp、log——内部永不坍缩）→ 末端坍缩（仅输出时 BigInt 高精度近似）。到最终输出前零精度损失。
- **代数域无无理数、无伪实数、无浮点**——全部 60 部领域理论百科强制约束：每个值都是 GF(p) 中的精确整数。伪实数（无法精确计算，故存近似值）在这个语言里根本不存在。
- 完整字符串/数组/字典方法面（`a.push(v)`、`s.upper()`、`a[1..]`……）
- 语法以正典卡为准：`bin\qlc2.exe --syntax`（英文版：[SYNTAX_EN.md](SYNTAX_EN.md)）

### 六大算符（本平台的代数脊柱）

六大算符贯穿语言与代数两层，下列取值全部实测（`examples/operators.ψ` 可复现）：

| 算符 | 名称 | 直接通道（JIT） | 元循环通道（WASM） |
|---|---|---|---|
| ⊕ | GF 加 | 域加；数组⊕数组逐元素、标量⊕数组广播 —— `1 ⊕ 2 → 3` | 精确发射 |
| ⊙ | GF 乘 | 域乘 —— `3 ⊙ 14 → 42` | 精确发射 |
| ≋ | NTT 蝶形 | 标量=域乘（`10 ≋ 4 → 40`）；数组=循环卷积（`[1,2,3] ≋ [1,1,1] → [6,6,6]`） | 精确发射 |
| ↡ | Born 投影 | 前缀单参：非零塌缩为 1/0 —— `↡(7 > 6) → 1` | 三参 `born_select(c, t, e)` 选择 |
| ∆ | Hebbian 雕刻 | `w ∆ s = (w + (s >> 8)) mod P`，数组逐元素 | 四参 `hebbian(addr, init, delta, count)` 记忆雕刻 |
| ◦ | Clifford 复合 | 数组复合（矩阵乘族）；标量按设计诚实报错 | 门展开 |

元循环契约公理：`born_select(true, t, e) = t`、`born_select(false, t, e) = e`、`hebbian(0, 0, 1, 3) = 3`、`born_select(3 ⊙ 2 > 5, hebbian(0, 10, 1, 2), 0) = 12`。

## 四、执行架构：三条确定性通道

| 通道 | 载体 | 说明 |
|---|---|---|
| fast JIT | x86-64 原生码 | 残数表直落硬件，最快执行（`--fast`） |
| collision VM | 碰撞虚拟机 | 第二独立实现，与 JIT 互为对拍（`--collision`、`--selftest`） |
| WASM 元循环 | psi_to_wasm + wasm_interp | ψ 发射标准 WASM，ψ 解释器执行——平台的自承载面（`--wasm`） |

- `--selftest`：碰撞 VM 与 fast JIT 双通道交叉验证 + 自举源编译检查（no-fake-green 设计：缺文件即诚实 FAIL）
- `--fixpoint`：自编译 Kleene 不动点链
- `--check / --lint / --doi / --guess / --eval`：全量语法体检、反模式扫描、域序推断、拼写建议、会话求值

## 五、量子能力层

量子是本平台的第一公民，纵深从纠错码直通量子引力：

**纠错码族**（`lib/core/stdlib/qec.ψ` 34KB、`css.ψ`）：Shor-9 码、Steane `[[7,1,3]]` 门族、表面码、CSS 码、退极化信道、阈值定理、级联码。

**量子算法族**：QFT 与逆 QFT（GF 单位根相位编码）、相位估计（Grover 物理等价）、量子走步（`quantum_walk`）、量子退火（`quantum_annealing`）、量子控制/计量/资源/测量（`core/domain` 百科）。

**量子密钥分发 QKD**：BB84 确定性化七阶段 + E91 纠缠协议（见能力卡 7）。

**量子-经典接口**：`pe_to_quantum.ψ` 把处理单元映射为量子线路——GF 模乘线路（17 量子比特 ≈ 65537 域）、查表=Oracle、蝶形=QFT、路由=SWAP 网络、逻辑=Toffoli 系；`qpu.ψ` 提供量子处理单元编译面。

**量子场协议栈**（`qqbc` 全家）：量子场字节码 `qqbc_bin`、帧流协议 `qqbc_frame`（首帧 FULL + 位移 DELTA，带宽 ∝ 变化量）、会话时序 `qqbc_session`、远程动画 `qqbc_anim`（传极点轨迹、客户端本地演化——动画没有帧率）、WebGPU 后端 `qqbc_webgpu`、规范场守恒 `qqbc_gauge`。

**领域理论百科**（`lib/core/domain/`，60 部）：`quantum_gravity` / `quantum_cosmology` / `quantum_field` / `quantum_optics` / `quantum_network` / `quantum_ml` / `quantum_chaos` / `quantum_biology` / `open_quantum_systems` / `quantum_stat_mech` / `quantum_thermo` / `quantum_transport` / `gauge_suN` / `spin_network` / `topo_quantum` / `rep_theory`（表示论）/ `cft`（共形场论）……每部都是可编译、可运行的 ψ 程序。

**黑洞熵的 GF(p) 精确表示**（`gf_quantum_gravity.ψ`）：Bekenstein-Hawking 熵 S = A/4G 作为精确域元素计算——黑洞热力学也有精确的 GF(p) 表示。

## 六、GF(p) 精确求解层

**域基座**（`gf65537.ψ`）：Tonelli-Shanks 平方根、GF(p²) 二次扩域（非剩余表示 + Conway 多项式验证 + 本原根）、域常数表（i=256、π=52011、e=556、ln2=45426——超越常数也有精确的域表示）。

**超越数的精确符号表示**（内置于运行时二进制）：π 用 Machin 公式（4×(4·arctan(1/5) − arctan(1/239))）、e 用 Taylor 级数（Σ 1/k!）、√ 用代数扩域、sin/cos/exp/log 作为符号 SymVal 变体——到末端输出前永不坍缩为数字。符号层保持精确，仅 `display()` 按用户指定精度产生 BigInt 近似。

**嵌套分形留数场**（`nested_fractal.ψ`）：n 阶极点内部嵌套 (n−1) 阶微分场——分形自相似。恒等式：`unnest(nest(field)) = field`（嵌套-展开恒等）、`integrate(differentiate(field)) = field`（微分-积分可逆）。谱序列 E_k = d^k(field) 与 Hausdorff 维数 N = (1/r)^dim 均为 GF(p) 中的代数关系。

**数论军械库**：丢番图解码三件套——韦达跳跃、连分数、无穷递降（`diophantine.ψ`：连分数 token 哈希，有理逼近替代 Softmax）；中国剩余定理 CRT；NTT/FFT；p-adic 分层（指数-余数分解、范数分级）；平衡三进制 `trit.ψ`；辫群与 Yang-Baxter `braid.ψ`；Berlekamp-Massey（`ml/berlekamp_massey.ψ`）。

**线性代数**：`linalg_gf` / `gf_matmul` / `gf_gemv` / `gf_conv`、矩阵分解、张量缩并序（`contraction_order.ψ`）、代数几何（`algebraic_geometry.ψ`）。

**精确求解件**：`isqrt` / `icbrt` 整数根、`gf_sqrt`（Tonelli-Shanks 宿主）、`gf_inv` / `gf_div` / `mod_norm` 域归一、`poly_eval` 多项式求值、`cert_zero` 零性证书——求解结果自带可验证证书。

**律制音乐**（开发套件）：GF 域上的纯律/十二平均律/移调，精确到拍。

## 七、物理与定律发现层

- `lib/physics/`：210 个程序的残数场物理族（residueon 全家：QFT、引理、混沌、统计、椭圆曲线……）
- **定律发现引擎**：`bm_canon` + `gx_*` 粒化模块群（见能力卡 1），对 Moseley/Balmer/Bode/Stefan/Newton/OEIS/季节整族定律成立
- **Atiyah-Singer 指标定理**（`residueon_index.ψ`）：椭圆算子指标（dim ker D − dim coker D）等于拓扑示性类积分（Â(TM)·ch(E)）——在 GF(p) 中精确验证。Gauss-Bonnet（χ(S²)=2、χ(T²)=0）、Hirzebruch-Riemann-Roch、Dirac 指标均为精确整数维数差的特例。
- **物理学习件**：`reservoir.ψ` 物理储备池、`edge_learn.ψ` 边缘在线学习、`beam.ψ` 波束赋形（DBF：O(N) 替代 O(N²) 注意力——相位梯度即推理方向）、`imag_time.ψ` 虚时间确定性退火（禁随机下全局最优）、`crystal.ψ` 知识结晶协议（三条可计算硬条件）、`hbar_elim.ψ` 物理常量归一化（ℏ=1，32 函数）、`lock_phase.ψ` 频率锁相跨域类比、`pole.ψ` 柯西留数动力学、`topo_logic.ψ` 涡旋布尔门、`susy.ψ` 五算符超对称配对

## 八、领域库（31 个领域，约 880 个程序）

| 领域 | 规模 | 亮点 |
|---|---|---|
| **chem** | 599 程序 | 周期表（118 已知 + 54 预测超重）、化学键、同位素、光谱、电化学、动力学、热力学 |
| **crypto** | 9 程序 | 对称 S-box / 全同态 FHE / LWE 格 / PKI / 128 方门限签名 / 密钥交换（见能力卡 7） |
| **security** | 4 程序 | acl / audit（防篡改日志）/ auth（签名认证） |
| **ml** | 18 程序 | model/training/train_loop/rl/bandit/meta_learning/online_learning/ssm_field/weight_io 完整训练栈 |
| **db** | 29 程序 | **ψDB**：多模型数据库——7 种存储模型（KV/文档/图/向量/时序/列式/对象）、MVCC、量子/时空/认知数据库、SurrealDB 风格查询、MQTT 物联网、Cl(4,1) 时空——共 51 个数据库程序，全部纯 ψ（见能力卡 8） |
| **ai** | 21 程序 | 工具调用 agent（分析→计划→执行→验证），附 60 轮自主知识实验数据 |
| **net / kernel / infra** | 36 程序 | 网络栈、内核域、基础设施编排（依赖 backend/db/search） |
| **robot / sim / game / ui** | 31 程序 | 机器人行为、仿真、博弈、界面域 |
| **bio / backend / compute / queue / adv_rag / 等** | 其余 | 31 域全清单见 `lib/domain/` |

另有 `lib/math/`（大数/数论/代数几何）与 `lib/core/stdlib_lang2/`（GF 基座 + 定律发现引擎 + 词法/语法粒化模块群）。

## 九、前端与系统接口

**窗口栈**：`win_open` / `win_present` / `win_poll` / `present_size` 宿主平台 + 九个 Aurora shell 应用 + WGSL 计算管线（见能力卡 6）。

**系统接口**（冻结 ABI，`--abi` 全量清单）：文件 IO（`read_file`/`write_file`）、TCP 全家（`tcp_listen/accept/connect/send/recv/close`）、`sleep_ms`、对象宿存三件套（`host_obj_store/load/free`）、GPU 推理接口（`q15_matmul` / `q15_layer_step` / `q15_argmax` / `q15_load_bin`）。

**四个 ISA 后端**：x86-64（`pe_to_x86`）、ARM64（`backend/arm.ψ`）、RISC-V（`backend/riscv.ψ`）、WASM（`pe_to_wasm`）；外加 WGSL GPU 后端（`pe_to_webgpu`）和 `wasm_aot.ψ`（**ψ 写的 WASM→x86-64 AOT 发射器**）。其余 ISA 发射器（AVR、龙芯、MIPS、PowerPC、SPARC、eBPF、Xtensa）正在开发中——见路线图。

**编译器族**（`lib/compiler/` + `lib/core/stdlib/`）：`lex_compiler`（ψ 写的词法器编译器）、`meta_operators` / `operator_spec`（算符规范）、`opt_passes`（25KB 优化通道）、`residue_ir`、`dataflow`/`dag` 全家（调度/运行时/传输/视图）、`pe_to_x86` / `pe_to_wasm` / `pe_to_webgpu`（处理单元→三后端发射）、`cgra_mapper` / `cgra_gpu_emit`（CGRA 映射与 GPU 发射）。

## 十、论文

理论序列论文随仓库分发（`papers/`，中文原版 + 英文翻译）。Series I–VII 已在 Zenodo 出版——全部记录可用 [Zenodo 检索 "FodaOS"](https://zenodo.org/search?q=%22FodaOS%22) 一览：

| # | 论文 | 主题 | Zenodo DOI |
|---|---|---|---|
| 1 | CGL Mother Equation（中/英） | 母方程 | [10.5281/zenodo.21992268](https://zenodo.org/records/21992268) |
| 2 | ARC Arithmetic Resonance（中/英） | 算术共振 | [10.5281/zenodo.22036900](https://zenodo.org/records/22036900) |
| 3 | Algebraic QM Combinatorial（中/英） | 代数量子组合 | [10.5281/zenodo.22052071](https://zenodo.org/records/22052071) |
| 4 | Residue Trichotomy（中/英） | 残数三分性 | [10.5281/zenodo.22160372](https://zenodo.org/records/22160372) |
| 5 | Residue Compiler（中/英） | 残数编译器 | [10.5281/zenodo.22239196](https://zenodo.org/records/22239196) |
| 6 | Brain-Inspired Cognitive Architecture（中/英） | 脑启发认知架构 | [10.5281/zenodo.22822344](https://zenodo.org/records/22822344) |
| 7 | Reversible Correlation Algebra（中/英） | 可逆关联代数 | [10.5281/zenodo.22857665](https://zenodo.org/records/22857665) |
| 8 | Geometry of Failure（中/英） | 数据传输损坏时，系统要么自动修复要么报警——永远不会静默返回貌似正确的错误值。一条不等式统治检测、纠错、自愈与证书。 | — |

## 十一、目录结构

```text
bin/qlc2.exe            预编译编译器/运行时（Windows x64，自包含）
bin/test_*.psi          自检文件（--selftest 随二进制分发）
lib/core/               stdlib（305 程序）+ stdlib_lang2 + core/domain 理论百科 + base
lib/compiler/           自举编译器内核（unified.ψ / meta_operators / bootstrap/）
lib/physics/            残数场物理族（210 程序）
lib/domain/             31 个领域库（约 880 程序）
lib/math/               大数/数论/代数几何
lib/frontend/           窗口 UI 栈（9 个 shell 应用 + 工具箱 + WGSL 演示）
examples/               可运行展示：hello / operators / library / metacircular /
                        periodic_table / law_discovery / qec_shor9 / qec_steane / qec_surface
self_compile.ψ          ψ 自举编译器（开发预览）
papers/                理论序列论文 1~8（中英）
papers/abi.json        冻结宿主 ABI 表
SYNTAX_EN.md           内置语法卡的英文译版
```

## 十二、发布

- 编译器版本：**qlc2 0.3.0**（`bin\qlc2.exe --version`）
- 二进制 SHA-256（clone 后可自行校验：`certutil -hashfile bin\qlc2.exe SHA256`）：

```text
7632a201507b7bfe3f4eecbf8dfd6b0fdd990d8aa5518e3c9319aff2893e1bd8
```

## 十三、贡献

见 [CONTRIBUTING.md](CONTRIBUTING.md)。一切 ψ——库代码、示例、文档、论文翻译、自举编译器（`self_compile.ψ`）——欢迎贡献。验收以语义指纹为重构 oracle。

## 十四、路线图

**现状以上文为准；以下是我们要攻克的方向，不承诺时间表，但每一个都有明确的落点**：

### 平台与后端
- **Linux / macOS 原生二进制**——三平台一个指纹
- **更多 ISA 后端与真机落板**：AVR、龙芯、MIPS、PowerPC、SPARC、eBPF、Xtensa——ISA 发射器已用 ψ 编写，等待真机验证
- **数据流硬件后端**：CGRA（粗粒度可重构阵列）、FPGA、GPU/SPIR-V、TPU 脉动阵列、NPU、Groq TSP、SambaNova RDU——数据流架构中残数场天然映射到空间计算织物
- **光子后端**：相干光计算、Mach-Zehnder 干涉仪、光张量核——GF(p) 相位编码到光子电路上
- **类脑后端**：脉冲编码残数场到 Loihi 类芯片——确定性脉冲，无浮点膜电位衰减
- **可逆计算后端**：Billiard-ball 模型、Toffoli/Fredkin 门——零能耗耗散，绕过 Landauer 原理
- **生物计算后端**：DNA 链置换计算在残数域密码子上——存储密度 10¹² GB/cm³，确定性杂交
- **空间计算**：抗辐射残数场用于轨道与深空计算——代数校验和可检测单事件翻转——无浮点位翻转的静默腐败

### 密码与安全
- **硬件信任根 TEE / 硬件 DRM 接口**——给能力卡 7 的游戏内存加密 DRM 装上硬件最后一环，vault 封存层已是应用侧锚点
- **格密码**：Module-LWE / Module-LWR、NTRU 格、Falcon 签名——超越当前 LWE/RLWE 基线
- **FHE**：BGV-to-CKKS 桥接、自举优化、SIMD 密文打包——让同态计算在规模上实用
- **零知识证明**：纯 ψ 实现的 zk-STARK、递归证明组合、查表论证（Plookup）——无需可信设置的确定性证明生成
- **多方安全计算 MPC**：残数域上安全计算——n 方零泄漏，确定性聚合
- **属性基加密**：GF(p) 上谓词加密——细粒度访问控制作为代数策略
- **签名聚合**：纯 ψ 的 BLS 风格聚合签名——一万个签名聚为一个，验证加速 100 倍

### 量子
- **QEC 码族**：LDPC / qLDPC、color 码、bosonic 码、超图积码——从三巨头到全谱系
- **量子模拟**：CGRA 上张量网络缩并、Clifford+T 分解优化、GF(p) 中量子体积基准
- **量子优势**：Jones-Tutte 多项式求值作为确定性量子优势见证——无采样、无概率、纯代数判决
- **量子误差缓解**：GF(p) 中零噪声外推——NISQ 时代优势，无纠错开销
- **量子机器学习**：变分线路作为残数域优化——无浮点参数漂移训练量子线路
- **量子互联网**：纯 ψ 的纠缠分发协议——中继链、Bell 态验证、确定性隐形传态

### 数学与物理
- **GF 参数化**：GF(p) 任意 p、GF(2^k) 二进制扩域族——一条语言，所有域
- **p-adic 计算**：p-adic zeta 函数、p-adic L 函数、p-adic 量子场论——在 p-adic 数上精确计算物理
- **几何代数**：Cl(4,1) 升级为编译器核心基础设施——rotor 优化、grade 静态断言、G3 暗态层、具身智能反馈闭环
- **孤子计算**：孤子簇碰撞代数、逆散射变换作为编译 pass——通过非线性波拓扑捕获语义
- **拓扑计算**：Fibonacci 任意子辫子、拓扑缺陷计算、Majorana 零模——从容错拓扑获得容错，而非纠错
- **NTT 谱**：数论变换作为通用卷积核——每个代数域中 O(N log N) 乘法
- **Clifford 代数族**：Cl(p,q) 超越 Cl(4,1)——Cl(3,0) 空间推理、Cl(0,6) 八元数物理、Cl(8,0) Bott 周期
- **留数微积分**：柯西积分公式作为编译原语——围道积分作为代码变换
- **自动微分**：对偶数作为编译器原生类型——精确导数，无符号微分开销，无有限差分误差

### AI 与机器学习
- **推理核**：波束赋形替代注意力（`beam.ψ`）+ 储备池记忆的规模化——AI 推理核的确定性路线
- **选择性留数推理**：极点门控叠加、每时间步动态阈值——丢弃 79.7% 极点偏差 <0.0012%
- **语义记忆**：孤子簇知识存储、柯西留数召回——记忆作为非线性波动力学，而非查表
- **训练**：Hebbian + anti-Hebbian 竞争学习、在线权重演化、无梯度下降——训练作为确定性动力系统
- **世界模型**：确定性环境模拟作为基于模型的 RL 骨干——想象、规划、行动，全部纯 ψ
- **神经符号**：符号回归 + 神经残数场——定律发现引擎遇上推理核
- **持续学习**：Hebbian 可塑性无灾难性遗忘——无限任务流，稳定记忆，零重放

### 渲染与模拟
- **渲染引擎**：柯西残数场渲染、WGSL GPU 计算管线、残数场 2D 仿真——渲染作为代数几何，而非光栅化
- **光线追踪**：GF(p) 中精确射线-曲面求交，无浮点 epsilon、无阴影粉刺——光传输作为纯代数
- **物理模拟**：多物理场耦合（电磁 + 声学 + 热 + 流体 + 地震），全部在残数场上——一个引擎，每个物理域
- **流体动力学**：SPH 粒子模拟精确算术，无能量漂移、无数值粘性——守恒律作为代数恒等式
- **声学仿真**：残数域上精确波动方程——无浮点舍入色散误差、精确波传播，房间声学即代数
- **地震仿真**：GF(p) 中地震波传播——全波形反演无浮点偏移伪影
- **布料与软体**：精确弹簧-质点动力学——无数值阻尼、精确动量与能量守恒，褶皱仿真即代数恒等式

### 数据库与网络
- **ψDB**：向量索引加速、分布式分片、实时流式 SQL——行星级多模型
- **网络协议**：qqbc over QUIC、点对点规则传播、区块链锚定指纹验证——传规则、本地演化、全局验证
- **操作流**：跨设备 DAG 同步、边缘计算卸载、联邦确定性计算——一个 DAG，多台机器，零分歧
- **流式数据库**：实时残数域流处理——窗口聚合、精确一次语义、无浮点水位线
- **图数据库**：Cl(4,1) 代数图查询——路径搜索即几何代数，子图同构即多重向量匹配
- **行星级共识**：确定性 BFT 到行星级——一万节点，零分歧，数学一致

### 语言与工具
- **确定性分布式**：无随机源约束下的多机一致计算——无限规模，零分歧
- **浏览器宿主**：`wasm_run` JS 壳 + WGSL 管线 Web 化——`qqbc_webgpu` 已探路，浏览器里跑确定性物理
- **ψ 包管理器与模块注册表**——`let m = "mymod.ψ"` 已是模块系统雏形，生态起飞在即
- **形式化验证**：纯 ψ 的携证代码——编译器在二进制旁输出证明，验证全自动
- **增量编译**：指纹引导的最小重编译——改一个函数只重编其依赖锥，已演示 37.6x 加速
- **跨语言 FFI**：残数域 ABI 桥接 Rust / C / Python——精确整数互操作，无浮点封送损失
- **文档攻势**：二进制 UI 英文化（语法卡英文版已交付——`SYNTAX_EN.md`）、教程系列、31 域逐域手册

### 生物与化学
- **分子动力学**：精确算术力场——无 Langevin 热浴漂移、无浮点能量不守恒，飞秒步长不累积误差
- **蛋白质折叠**：残数域构象搜索——离散旋转异构态作为 GF(p) 元素，无连续优化、无随机采样
- **反应网络合成**：代数路径设计——残数域约束满足合成化学路线，而非随机动力学
- **DNA 计算**：残数域密码子代数——序列比对与基序搜索作为 NTT 卷积，比 Smith-Waterman 快 100 倍

### 金融与经济
- **精确市场仿真**：纯 ψ 撮合引擎——每笔成交、每个 tick、每次结算逐位一致，无浮点套利
- **确定性风险分析**：VaR、Greeks、情景压力——全部精确算术，无蒙特卡洛、无采样噪声，可复现审计
- **均衡计算**：Nash、Arrow-Debreu、Walras 均衡作为残数域不动点——无数值漂移，收敛即代数
- **精确结算**：残数域账本上 T+0 结算——无舍入损失、无对账断裂，每个账户永远精确到分

## 十五、正在迭代中

> **v0.3.0 是预览版，不是正式发布版。** 平台正在快速迭代迈向 v1.0。

- **预编译编译器二进制为 Windows x64**——Linux/macOS 宿主构建在路线图中。但编译器的*产物*不受此限：程序可编译到 x86-64、ARM64、RISC-V、WASM 与 WGSL GPU，编译出的程序早已跑在 Windows 宿主之外
- **`self_compile.ψ` 就是编译器源码**——自举编译器（约 4700 行 ψ）在本仓库完全开放；`bin/qlc2.exe` 是 Rust 引导编译器的预编译二进制，用于启动自举链
- **`--selftest` 和 `--fixpoint` 须从 `bin/` 运行**——路径解析相对于可执行文件所在目录

## 链接

- **官网**：[epiphys.com](https://www.epiphys.com/) —— QuantumSim 量子仿真平台
- **联系**：[support@epiphys.com](mailto:support@epiphys.com)

## 许可

Apache-2.0 —— 详见 [LICENSE](LICENSE)。ψ 源码（含 `self_compile.ψ` 自举编译器）按 Apache-2.0 开放；`bin/qlc2.exe` 是 Rust 引导编译器的预编译二进制，用于启动自举链。
