require 'formula'

class Lmutil < Formula
  url 'http://www.globes.com/products/utilities/v11.9.1/lmutil_universal_mac10.tar.gz'
  version '11.9.1'
  homepage 'http://www.globes.com/support/fnp_utilities_download.htm'
  md5 '0941f4f1b88e34ae2b50a463f88b05a7'

  # Stripping the binaries would invalidate the code signatures
  skip_clean ['bin']

  def install
    bin.install 'lmutil'
    chmod 0755, bin+'lmutil'
    ln_s bin+'lmutil', bin+'lmstat'
    ln_s bin+'lmutil', bin+'lmdiag'
  end
end
