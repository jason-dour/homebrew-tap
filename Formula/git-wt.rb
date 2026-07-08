class GitWt < Formula
    desc "Git Extension For Worktree Management"
    homepage "https://github.com/jason-dour/git-wt"
    version "1.0.1"

    on_macos do
        url "https://github.com/jason-dour/git-wt/releases/download/v1.0.1/git-wt_v1.0.1_darwin_universal.tar.gz"
        sha256 "cb1ecb57032abfac98781972625066bedad99ac061268f45857a0cfd6c47d9ee"
    end

    on_linux do
        if Hardware::CPU.arm?
            url "https://github.com/jason-dour/git-wt/releases/download/v1.0.1/git-wt_v1.0.1_linux_arm64.tar.gz"
            sha256 "45b2d6e5dd39f42605ef3385c05f9f8909722a9d90b277b498d14f6d78850fd6"
        else
            url "https://github.com/jason-dour/git-wt/releases/download/v1.0.1/git-wt_v1.0.1_linux_amd64.tar.gz"
            sha256 "d87be37ebaa800740482d094600f7d1e339f597810c039880146da8fb6b18c58"
        end
    end

    def install
        bin.install "git-wt"
    end

    test do
        system "#{bin}/git-wt", "-v"
    end
end