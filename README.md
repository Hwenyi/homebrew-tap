# homebrew-tap

个人维护的 Homebrew Tap。

## 使用方式

```bash
brew tap Hwenyi/tap https://github.com/Hwenyi/homebrew-tap.git
brew install feishu-cli
```

> 或者：

```bash
brew tap Hwenyi/homebrew-tap
brew install feishu-cli
```

## 包含 Formula

- `feishu-cli`（来源：https://github.com/riba2534/feishu-cli）

## 自动更新

- 工作流：`.github/workflows/update-feishu-cli.yml`
- 每 6 小时检查一次上游 release
- 若有新版本会自动更新 `Formula/feishu-cli.rb` 并提交
