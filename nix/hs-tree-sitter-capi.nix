{
  "13.0.14.0" = {
    sha256 = "f58e0cac04757d48c310a283a3c2a52e1397cd048b2a365e240e63f682379c59";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-tree-sitter-capi-13.0.14.0-r0-069429af98cd0482e358038868fff58b899884bc3a5f4f1f6c8d7a590fdf0e0f.nix;
        revNum = 0;
        sha256 = "069429af98cd0482e358038868fff58b899884bc3a5f4f1f6c8d7a590fdf0e0f";
      };
      r1 = {
        nix = import ../hackage/hs-tree-sitter-capi-13.0.14.0-r1-d8e9060a7fd92d399ad50a3ff98e15e7702de1e910305f6898213e641f11c224.nix;
        revNum = 1;
        sha256 = "d8e9060a7fd92d399ad50a3ff98e15e7702de1e910305f6898213e641f11c224";
      };
      default = "r1";
    };
  };
}