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
      default = "r1";
    };
  };
}