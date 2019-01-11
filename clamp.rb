class Clamp < Formula
  desc "command-line tool for local MAMP management"
  homepage "https://jide.github.io/clamp"
  head "https://github.com/aerickson/clamp.git"
  
  depends_on "mariadb"

  def install
    inreplace "clamp", %r{/usr/local/clamp}, prefix
    prefix.install Dir["*"]
    bin.install_symlink "../clamp"
  end

  test do
    system bin/"clamp", "help"
  end
end
