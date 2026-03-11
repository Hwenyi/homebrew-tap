class StockCli < Formula
  desc "CLI for fetching HK and US stock quotes with stock-sdk"
  homepage "https://github.com/Hwenyi/stock-cli"
  version "1.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/Hwenyi/stock-cli/releases/download/v#{version}/stock-cli_v#{version}_darwin-arm64"
    sha256 "2b57f6d242abe37fba38ce7ce8ba22540934eaf8d0217eedf3711aa6ce9d4773"
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
