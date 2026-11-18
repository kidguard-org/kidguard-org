<!-- studio-os:central:start -->
## Studio OS central AI configuration

每个新会话自动执行，无需用户提示：
1. 本项目 ID 为 kidguard-org，中央维护源为 "../studio-os"（相对于业务项目根目录；先定位 Git 根目录，再解析此路径）。
2. 以该相对维护源为基准读取中央 rules/global.md、projects/kidguard-org/RULES.md 和 projects/kidguard-org/HANDOFF.md，核对实际工作区后继续任务。
3. 首次接入和持续任务自动读取中央 skills/asset-maintenance.md，执行迁移、归类与待确认决策；持续任务自动读取中央 skills/work-checkpoint.md；按 projects/kidguard-org/SKILLS.md 路由其它技能。不要要求用户手动调用。
4. 首次接入必须先检查中央 projects/kidguard-org/candidates/migration/ 的盘点、自动收集快照和 AI-NOTES.md：候选快照不是正式迁移。未完成时先审查并迁移，再开展业务任务；只有具体权限拒绝、来源缺失、冲突待用户决定或明确紧急恢复可以暂缓，必须记录涉及文件、证据和下一步。“以后处理/正在核对”不构成阻塞。主动审查已有入口与技能，将不含敏感内容的 AI 专属规则、技能及其文本附件迁入中央项目目录，保留来源、触发条件和迁移状态；在迁移验收前不删除旧配置。所有新规则、技能、AI 决策与进度写入中央 projects/kidguard-org/；本地已有规则保留，在完成审查迁移前继续遵守。不得带入业务源码、凭据或客户日志。
5. 中央项目目录缺失时，用 Python 执行中央 studioctl connect --target 当前项目根目录 --id kidguard-org 自动重建登记；如无权限或中央源不可访问，明确记录阻塞，不宣称已加载，不要求重复启动语。
6. 中央正式配置只存相对路径；central.json 只存共享绑定，本机 local.json、Codex/Cursor 权限配置和启动回执由 Git 忽略，启动时动态解析并刷新，不作为同步维护源。通过 studioctl run 启动时在进程前准备；原生启动钩子需工具正常信任并经行为验收。缓存刷新不表示已运行会话的权限已重载；如工具要求重开会话，明确告知。中央正文直接读最新，不手改本桥接。
<!-- studio-os:central:end -->
