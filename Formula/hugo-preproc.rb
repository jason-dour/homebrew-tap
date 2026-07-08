class HugoPreproc < Formula
    desc "Helper for Hugo to provide for pre-processing of files."
    homepage "https://github.com/jason-dour/hugo-preproc"
    version "2.1.1"
    url "https://github.com/jason-dour/hugo-preproc/archive/refs/tags/v2.1.1.tar.gz"
    sha256 "f4da8c118bb84f0798e4572b8e2711a8931b9e37529a6e2474f964ef6bb144ae"
    license "AGPL-3.0-or-later"
    head "https://github.com/jason-dour/hugo-preproc.git", branch: "main"

    depends_on "go"
    depends_on "go-task"

    def install
        system "task", "build"
        bin.install "hugo-preproc"
    end
end