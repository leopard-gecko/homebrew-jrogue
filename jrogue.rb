class Jrogue < Formula
  homepage "http://leopardgecko.zouri.jp/rogue.html"
  url "http://file.leopardgecko.blog.shinobi.jp/jrogue.tar.gz"
  version "5.4.5J"
  sha256 "35f532bc275754a7aa5f705abe16d2612867eb3cd13be98b765b96a2a046bd2b"

  # depends_on "cmake" => :build
#  depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--with-ncurses",
                          "--with-program-name=jrogue",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "make install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test libhoge`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/jrogue"
  end
end
