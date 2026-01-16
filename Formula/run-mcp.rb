class RunMcp < Formula
  desc "Cross-platform binary for running MCP servers in containers"
  homepage "https://github.com/serverless-dna/run-mcp"
  version "1.0.3"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.3/run-mcp-darwin-arm64"
      sha256 "e6e9e47f0244ea2e83d802a7b9bfbfabf90ca60e5e960601ad841c337fa668bd"
    else
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.3/run-mcp-darwin-amd64"
      sha256 "c50ef8b4e4b60cca539026b63e9286d51e730b092d404a5af95257ab8fd6e1da"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.3/run-mcp-linux-arm64"
      sha256 "8323a12ae809e9971f8191132ccae477911106169aeb6c89b8ee7b2f3dcc6575"
    else
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.3/run-mcp-linux-amd64"
      sha256 "65c6780b3679ff2debd6f6a89222d37f04fc2c6e49064b57f017e9bbab70a91b"
    end
  end
  
  def install
    bin.install Dir["*"].first => "run-mcp"
  end
  
  test do
    assert_match version.to_s, shell_output("#{bin}/run-mcp --version")
    assert_match "Show this help message", shell_output("#{bin}/run-mcp --help")
  end
end
