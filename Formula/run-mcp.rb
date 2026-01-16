class RunMcp < Formula
  desc "Cross-platform binary for running MCP servers in containers"
  homepage "https://github.com/serverless-dna/run-mcp"
  version "1.0.3"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.3/run-mcp-darwin-arm64"
      sha256 "70f7cc468cdb03c346478bdce14fa24f0218f8a3d695243b5a8f726c7180b8a3"
    else
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.3/run-mcp-darwin-amd64"
      sha256 "ec82aa6e8698db298b2aa0f6eeeaf9936072b06294ab38ff6762e0807a365749"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.3/run-mcp-linux-arm64"
      sha256 "83a16f0f422cf6a91990b137ec8ae725e17db79ff1a7a6afa0cb2de9f6693199"
    else
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.3/run-mcp-linux-amd64"
      sha256 "5ceb7d7916fc152f3ebadc32bd86a88cc5c5fbafd13ec159b4ad72050523ba1c"
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
