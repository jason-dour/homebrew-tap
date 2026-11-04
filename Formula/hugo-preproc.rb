class HugoPreproc < Formula
    desc "Helper for Hugo to provide for pre-processing of files."
    homepage "https://github.com/jason-dour/hugo-preproc"
    version "2.1.2"
    license "AGPL-3.0-or-later"

    on_macos do
        if Hardware::CPU.arm?
            url "https://github.com/jason-dour/hugo-preproc/releases/download/v2.1.2/hugo-preproc_v2.1.2_darwin_arm64"
            sha256 "56d4e380eb897b585fc31f0f2fdfbcec98548f1dc7270fdf4c91db86b95e51ba"
        else
            url "https://github.com/jason-dour/hugo-preproc/releases/download/v2.1.2/hugo-preproc_v2.1.2_darwin_x64"
            sha256 "9fc189f19a10a0c0d66b6dca876b7a94d88f2716c86c0053b0531a61c033a0b2"
        end
    end

    on_linux do
        if Hardware::CPU.arm?
            url "https://github.com/jason-dour/hugo-preproc/releases/download/v2.1.2/hugo-preproc_v2.1.2_linux_arm64"
            sha256 "205f8fa1008393ef7d09e1070440d1a3be95339396589c7dbf60483c23a9ed10"
        else
            url "https://github.com/jason-dour/hugo-preproc/releases/download/v2.1.2/hugo-preproc_v2.1.2_linux_x64"
            sha256 "a6ce72a1ea0ef0fceac708e2e24518dd8f00d93e79b0662673cd02e7d5c2de96"
        end
    end

    def install
        ohai "installing #{self.class.url.split('/').last} to #{bin}/hugo-preproc"
        bin.install self.class.url.split('/').last => "hugo-preproc"
    end
end