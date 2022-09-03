# Generated with JReleaser 1.0.0 at 2022-08-29T17:07:55.173964Z
class Maestro < Formula
  desc "Maestro CLI"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/mobile-dev-inc/maestro/releases/download/cli-1.4.0/maestro-1.4.0.zip"
  version "1.4.0"
  sha256 "6547dc9423d1b56cc823f434d977ff7caf52f046786fe4d301585116346d0997"
  license "Apache-2.0"

#   depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.4.0", output
  end
end
