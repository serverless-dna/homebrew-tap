class RunMcp < Formula
  desc "Cross-platform binary for running MCP servers in containers"
  homepage "https://github.com/walmsles/serverless-dna"
  version "1.0.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/walmsles/serverless-dna/releases/download/v#{version}/run-mcp-darwin-amd64"
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"
    else
      url "https://github.com/walmsles/serverless-dna/releases/download/v#{version}/run-mcp-darwin-arm64"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/walmsles/serverless-dna/releases/download/v#{version}/run-mcp-linux-amd64"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"
    else
      url "https://github.com/walmsles/serverless-dna/releases/download/v#{version}/run-mcp-linux-arm64"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
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