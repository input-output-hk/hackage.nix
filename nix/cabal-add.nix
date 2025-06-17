{
  "0.1" = {
    sha256 = "61a90ae2a9c0d06c7c57b9bbcc3b757b6bc79e29485a9e033128398f3e88ebeb";
    revisions = {
      r0 = {
        nix = import ../hackage/cabal-add-0.1-r0-d3e923be1dc0d5deb1d402f11f435d0278576925688a9d4dd60229e3b36d6597.nix;
        revNum = 0;
        sha256 = "d3e923be1dc0d5deb1d402f11f435d0278576925688a9d4dd60229e3b36d6597";
      };
      r1 = {
        nix = import ../hackage/cabal-add-0.1-r1-cef0d48db1ae3b17dd28fb4d400118ce7403d7569c8792584841116e97b4917f.nix;
        revNum = 1;
        sha256 = "cef0d48db1ae3b17dd28fb4d400118ce7403d7569c8792584841116e97b4917f";
      };
      r2 = {
        nix = import ../hackage/cabal-add-0.1-r2-f5a058fb47edde9dd8744151d78fa696f0d01c738da37b9b60fa22930fee65e1.nix;
        revNum = 2;
        sha256 = "f5a058fb47edde9dd8744151d78fa696f0d01c738da37b9b60fa22930fee65e1";
      };
      r3 = {
        nix = import ../hackage/cabal-add-0.1-r3-9bf0e727714530bafb647930ff837bccf050262e97243f014b7ab18ea52a3b6a.nix;
        revNum = 3;
        sha256 = "9bf0e727714530bafb647930ff837bccf050262e97243f014b7ab18ea52a3b6a";
      };
      default = "r3";
    };
  };
  "0.2" = {
    sha256 = "af2b1afe9156f5722d4cb282de607d9ff34e5ea13448320186b957371f4aa039";
    revisions = {
      r0 = {
        nix = import ../hackage/cabal-add-0.2-r0-5a977eea61a8d1b9b4870cd4f1b022253a7bba6f73d17a9d7425b2e15aa5f574.nix;
        revNum = 0;
        sha256 = "5a977eea61a8d1b9b4870cd4f1b022253a7bba6f73d17a9d7425b2e15aa5f574";
      };
      default = "r0";
    };
  };
}