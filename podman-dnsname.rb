class PodmanDnsname < Formula
  desc "Name resolution for Podman containers"
  homepage "https://github.com/containers/dnsname"

  head do
    url "https://github.com/containers/dnsname.git", branch: "main"
  end

  depends_on "go" => :build

  def install
    system "make"
    system "make", "PREFIX=#{prefix}",
           "install"
  end
end
