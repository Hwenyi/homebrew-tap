class FeishuCli < Formula
  desc "飞书开放平台命令行工具（Markdown 与飞书文档双向转换）"
  homepage "https://github.com/riba2534/feishu-cli"
  version "1.11.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/riba2534/feishu-cli/releases/download/v#{version}/feishu-cli_v#{version}_darwin-arm64.tar.gz"
    sha256 "c4920a646e2e2dfc0ebb9b47a9c75d27358d3510566ba710d9f9d159011013a5"
  else
    url "https://github.com/riba2534/feishu-cli/releases/download/v#{version}/feishu-cli_v#{version}_darwin-amd64.tar.gz"
    sha256 "cb4fad6dff393771ede2ad6111d0c74e638b2de902c18c972bb438dafead1261"
  end

  def install
    bin.install "feishu-cli"
  end

  test do
    system "#{bin}/feishu-cli", "--version"
  end
end
