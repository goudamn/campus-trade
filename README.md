# 校园电子商城平台 🏫

基于 **SpringBoot 3 + Vue 3** 的前后端分离电商系统，面向校园场景提供完整的电商服务平台方案。

## 🖥️ 部分项目功能截图

> <img width="730" height="449" alt="项目截图" src="https://github.com/user-attachments/assets/eff5fc88-c4b1-49ee-889f-a2db26e23125" />


> <img width="1223" height="612" alt="项目截图2" src="https://github.com/user-attachments/assets/cf1e0e35-3b07-4c8f-98ca-0b10166a1f2b" />
<img width="1275" height="657" alt="项目后台5" src="https://github.com/user-attachments/assets/1fbdc666-f156-41dd-a736-c4f8c0c982df" />
<img width="1263" height="660" alt="项目后台4" src="https://github.com/user-attachments/assets/b2b10a41-53ab-470f-b778-d21eed44a271" />
<img width="1263" height="660" alt="项目后台3" src="https://github.com/user-attachments/assets/3caf7806-b15d-43a5-840d-e9528670624f" />
<img width="1263" height="660" alt="项目后台2" src="https://github.com/user-attachments/assets/8ad939cb-15c0-41fe-80ad-7c12d98a793b" />
<img width="1270" height="510" alt="项目后台" src="https://github.com/user-attachments/assets/3edcfa64-580f-4070-8353-bd36d7e8b9b8" />
<img width="1263" height="660" alt="项目截图7" src="https://github.com/user-attachments/assets/55e44b2e-7058-4350-b5bc-3ad4ca01cc6c" />
<img width="1263" height="660" alt="项目截图6" src="https://github.com/user-attachments/assets/4e8debd2-2948-40e3-af9f-2d6317ad4fcd" />
<img width="1223" height="612" alt="项目截图5" src="https://github.com/user-attachments/assets/6c80ccb9-2628-4d27-9a4c-ab32d6260004" />
<img width="748" height="450" alt="项目截图4" src="https://github.com/user-attachments/assets/d8201792-f532-458f-9eb2-3e42cf09021f" />
<img width="611" height="597" alt="项目截图3" src="https://github.com/user-attachments/assets/29c36ae8-03a3-4a65-a55a-c68d0dd5ca97" />




## 🛠️ 技术栈

| 层级 | 技术 | 版本 |
|------|------|------|
| 后端框架 | SpringBoot | 3.3.1 |
| ORM | MyBatis | 3.0.3 |
| 数据库 | MySQL | 8.x |
| 分页插件 | PageHelper | 1.4.6 |
| 工具库 | Hutool | 5.8.25 |
| 前端框架 | Vue 3 | 3.3.4 |
| 构建工具 | Vite | 4.4 |
| UI 组件库 | Element Plus | 2.8.4 |
| 图表库 | ECharts | 6.1.0 |
| HTTP 客户端 | Axios | 1.6.2 |
| JDK 版本 | OpenJDK | 21 |

## ✨ 功能模块

### 前台商城（普通用户）
- 🔐 用户注册 / 登录（角色选择）
- 🏠 首页：轮播图 + 热销推荐 + 新品上架 + 为您推荐
- 🛍️ 商品浏览：分类筛选 + 分页查询
- 📦 商品详情：富文本描述 + 评分评价 + 加入购物车 + 立即购买
- 🛒 购物车：批量选择 + 数量修改 + 合并下单
- 💰 账户充值：模拟支付宝 / 微信支付
- 📋 订单管理：订单状态跟踪 + 配送方式（自提/外送）
- ⭐ 商品收藏 + 订单评价（星级评分）
- 👤 个人信息 + 密码修改

### 后台管理（管理员）
- 📊 数据仪表盘：ECharts 折线图（近 7 日销售额趋势）+ 饼图（分类销售占比）
- 🛒 商品管理：上下架 + 推荐设置 + 富文本编辑
- 📑 分类管理 + 轮播图管理
- 👥 用户管理 + 管理员管理
- 📦 订单管理：状态变更（待接单 → 已完成/已取消）
- 💬 评价管理 + 收藏管理 + 充值记录

## 🏗️ 项目结构

```
code2026/
├── springboot/                 # 后端 SpringBoot 工程
│   ├── pom.xml                 # Maven 依赖
│   └── src/main/
│       ├── java/com/example/
│       │   ├── common/         # 通用配置（CORS、Result）
│       │   ├── controller/     # 控制器层（14 个）
│       │   ├── service/        # 业务逻辑层
│       │   ├── mapper/         # MyBatis 数据访问层
│       │   ├── entity/         # 实体类（10 个业务实体）
│       │   └── exception/      # 全局异常处理
│       └── resources/
│           ├── application.yml # 配置文件
│           └── mapper/         # MyBatis XML 映射（11 个）
│
└── vue/                        # 前端 Vue3 工程
    ├── vite.config.js          # Vite 配置（按需导入 + SCSS 主题）
    └── src/
        ├── views/
        │   ├── front/          # 前台页面（9 个）
        │   └── manager/        # 后台页面（11 个）
        ├── router/             # 路由配置（懒加载）
        ├── utils/              # Axios 封装（拦截器）
        └── components/         # 公共组件
```

## 🚀 本地运行

### 环境要求
- JDK 21+
- MySQL 8.0+
- Node.js 18+
- Maven 3.8+

### 1. 数据库初始化
```sql
CREATE DATABASE IF NOT EXISTS code2026 DEFAULT CHARACTER SET utf8mb4;
```

### 2. 启动后端
```bash
cd springboot
# 修改 application.yml 中的数据库密码
mvn spring-boot:run
# 后端启动在 http://localhost:9090
```

### 3. 启动前端
```bash
cd vue
npm install
npm run dev
# 前端启动在 http://localhost:5173
```

## 🔑 核心业务逻辑

### 订单下单（事务处理）
下单接口在 `@Transactional` 事务中完成以下多表联动操作：
1. 校验商品库存 → 库存不足时回滚
2. 扣减库存 + 增加销量
3. 生成订单编号 + 写入订单详情
4. 清理购物车已购商品
5. 校验账户余额 → 余额不足时回滚
6. 扣减用户余额

### 订单取消（数据回滚）
- 余额退回至用户账户
- 商品库存恢复 + 销量扣减

## 📄 License

本项目仅用于学习交流，请勿用于商业用途。
