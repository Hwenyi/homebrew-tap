class StockCli < Formula
  desc "CLI for fetching HK and US stock quotes with stock-sdk"
  homepage "https://github.com/Hwenyi/stock-cli"
  version "1.0.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/Hwenyi/stock-cli/releases/download/v#{version}/stock-cli_v#{version}_darwin-arm64"
    sha256 "e98ae560bb74291495b0ae38f6bad3504b8ca6c69deb08f4ecfe18a25fbdf55d"
  else
    odie "stock-cli currently publishes Homebrew binaries only for macOS Apple Silicon."
  end

  def install
    bin.install "stock-cli_v#{version}_darwin-arm64" => "stock-cli"
  end

  test do
    output = shell_output("#{bin}/stock-cli help")
    assert_match "stock-cli", output
  end
end
