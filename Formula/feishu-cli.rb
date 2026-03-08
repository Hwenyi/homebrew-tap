class FeishuCli < Formula
  desc "飞书开放平台命令行工具（Markdown 与飞书文档双向转换）"
  homepage "https://github.com/riba2534/feishu-cli"
  version "1.7.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/riba2534/feishu-cli/releases/download/v#{version}/feishu-cli_v#{version}_darwin-arm64.tar.gz"
    sha256 "5a9f542b39750893503eed9e0a36653d7c9aa05449c0ee9e935185f5c366002f"
  else
    url "https://github.com/riba2534/feishu-cli/releases/download/v#{version}/feishu-cli_v#{version}_darwin-amd64.tar.gz"
    sha256 "9ca3d0ac2c799a8510d661b02cdca99c3704a093c03def80480a12523659a0fe"
  end

  def install
    bin.install "feishu-cli"
  end

  test do
    system "#{bin}/feishu-cli", "--version"
  end
end
