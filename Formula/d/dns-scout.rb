class DnsScout < Formula
    desc "Pulls and display DNS records"
    homepage "https://github.com/careyjames/DNS-Scout"
    url "https://github.com/careyjames/DNS-Scout/archive/refs/tags/v5.8.tar.gz"
    sha256 "2ac687dfdd7f218a86ae5235c05f63c785af00786366e26f90d600972a5b282a"
    license "MIT"  
    depends_on "go" => :build
  
    def install
        # if OS.mac?
        #     if Hardware::CPU.intel?
        #       url "https://github.com/careyjames/DNS-Scout/releases/download/v5.8/dns-scout-macos-intel"
        #       sha256 "45b5fe937a570319da3b2957681010adcf4b077cc8bad59e5a1f445e18a951ab"
        #     elsif Hardware::CPU.arm?
        #       url "https://github.com/careyjames/DNS-Scout/releases/download/v5.8/dns-scout-macos-silicon"
        #       sha256 "f8e2c2f68c2e402b8aeef0225ebf04aedb6c6852b102e2c7f3dbe6f6f1e60ec9"
        #     end
        #   elsif OS.linux?
        #       if Hardware::CPU.is_64_bit? && Hardware::CPU.family == :amd
        #           url "https://github.com/careyjames/DNS-Scout/releases/download/v5.8/dns-scout-linux-amd64"
        #           sha256 "6340a67fcdc2b3cc71da39a6a2743299f0fdec75f1eafa2a330bc6338562ac06"
        #       else
        #           url "https://github.com/careyjames/DNS-Scout/releases/download/v5.8/dns-scout-linux-386"
        #           sha256 "9be5f67db272bf0ecb199dcbf665c361f8c240e80c4681373a0a9917ec744bc6"
        #       end
        #   end   
        system "go", "build", *std_go_args(ldflags: "-s -w")
    end
    
  end
  