class RunMcp < Formula
  desc "Cross-platform binary for running MCP servers in containers"
  homepage "https://github.com/serverless-dna/run-mcp"
  version "1.0.2"
  license "MIT"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.2/run-mcp-darwin-arm64"
      sha256 "0f1450831a7bce3e9bd2a203b23aac94dd9883843d48deb5b5f9e4054729dcff"
    else
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.2/run-mcp-darwin-amd64"
      sha256 "d07382bfc164aaf837257ab1bb6779909b4fdd8cdd6550963794db45b472efa1"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.2/run-mcp-linux-arm64"
      sha256 "6b763d14b12a4fda5f1d76d716486acc6d03ecab75480e2bef8153a063930508"
    else
      url "https://github.com/serverless-dna/run-mcp/releases/download/v1.0.2/run-mcp-linux-amd64"
      sha256 "cfc288a3b90a074a8efa3caafcd29a33d6cf2e252920e16d1a172bbc2d7aff7f"
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
