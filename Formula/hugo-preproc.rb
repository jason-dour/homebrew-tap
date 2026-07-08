class HugoPreproc < Formula
    desc "Helper for Hugo to provide for pre-processing of files."
    homepage "https://github.com/jason-dour/hugo-preproc"
    version "2.1.1"

    on_macos do
        if Hardware::CPU.arm?
            url "https://github.com/jason-dour/hugo-preproc/releases/download/v2.1.1/hugo-preproc_v2.1.1_darwin_arm64"
            sha256 "97593a0c9294939c777b320151c4758299b6bba4306e01df5f7a663aa7c7d187"
        else
            url "https://github.com/jason-dour/hugo-preproc/releases/download/v2.1.1/hugo-preproc_v2.1.1_darwin_x64"
            sha256 "9065c4aeeed23e4ae52ec18dea44c3eb7e7eea1813d8b0b85e7b7cc4bd891f92"
        end
    end

    on_linux do
        if Hardware::CPU.arm?
            url "https://github.com/jason-dour/hugo-preproc/releases/download/v2.1.1/hugo-preproc_v2.1.1_linux_arm64"
            sha256 "125ce67596c82de76d311347de140b269cee12e973c029879d51793fca45c31e"
        else
            url "https://github.com/jason-dour/hugo-preproc/releases/download/v2.1.1/hugo-preproc_v2.1.1_linux_x64"
            sha256 "e20305e02b0a9a785f4e1850bba917b5db3fa2a05ebad501cb6100f9856c26bc"
        end
    end

    def install
        bin.install url.split("/").last => "hugo-preproc"
    end

    test do
        system "#{bin}/hugo-preproc", "-v"
    end
end