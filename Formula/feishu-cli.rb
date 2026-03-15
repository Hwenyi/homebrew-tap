class FeishuCli < Formula
  desc "飞书开放平台命令行工具（Markdown 与飞书文档双向转换）"
  homepage "https://github.com/riba2534/feishu-cli"
  version "1.9.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/riba2534/feishu-cli/releases/download/v#{version}/feishu-cli_v#{version}_darwin-arm64.tar.gz"
    sha256 "970e5c41b3fc4dbb2dbd6919238393c8da4dbe5eccff90eab4910660eea744b5"
  else
    url "https://github.com/riba2534/feishu-cli/releases/download/v#{version}/feishu-cli_v#{version}_darwin-amd64.tar.gz"
    sha256 "6b1ef142af461c2f9f52c579d8354850b0de5e3b94775bf06cb1fc5e1d9db6db"
  end

  def install
    bin.install "feishu-cli"
  end

  test do
    system "#{bin}/feishu-cli", "--version"
  end
end
