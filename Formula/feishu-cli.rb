class FeishuCli < Formula
  desc "飞书开放平台命令行工具（Markdown 与飞书文档双向转换）"
  homepage "https://github.com/riba2534/feishu-cli"
  version "1.8.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/riba2534/feishu-cli/releases/download/v#{version}/feishu-cli_v#{version}_darwin-arm64.tar.gz"
    sha256 "ecd5b246a9ebfc1c9b77b60b997c3b6d5d75a15ffd1a92c13486c3bf26b7b3fa"
  else
    url "https://github.com/riba2534/feishu-cli/releases/download/v#{version}/feishu-cli_v#{version}_darwin-amd64.tar.gz"
    sha256 "2ea9a59f3ef35bb8e5e5f6fef131c6f5820b9563b398414ab84658fb88fe0f41"
  end

  def install
    bin.install "feishu-cli"
  end

  test do
    system "#{bin}/feishu-cli", "--version"
  end
end
