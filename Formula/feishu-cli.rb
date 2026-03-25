class FeishuCli < Formula
  desc "飞书开放平台命令行工具（Markdown 与飞书文档双向转换）"
  homepage "https://github.com/riba2534/feishu-cli"
  version "1.12.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/riba2534/feishu-cli/releases/download/v#{version}/feishu-cli_v#{version}_darwin-arm64.tar.gz"
    sha256 "9adbe7f626da19309e3ced602615434e7eb070903fd5a1d4e77b72d73db4d626"
  else
    url "https://github.com/riba2534/feishu-cli/releases/download/v#{version}/feishu-cli_v#{version}_darwin-amd64.tar.gz"
    sha256 "5d76e02e40aecb74e05a1ab6df2d7c27391802462a3059aecc53cfb97cece45f"
  end

  def install
    bin.install "feishu-cli"
  end

  test do
    system "#{bin}/feishu-cli", "--version"
  end
end
