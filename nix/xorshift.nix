{
  "1" = {
    sha256 = "ee7d6a0cc78852e2d1c967781b534425a702391fc521a56cb111715455de0509";
    revisions = {
      r0 = {
        nix = import ../hackage/xorshift-1-r0-e0f70da0953cbe3011d0c2c57169852b17d5111b94d104ef28c3aac78398958b.nix;
        revNum = 0;
        sha256 = "e0f70da0953cbe3011d0c2c57169852b17d5111b94d104ef28c3aac78398958b";
      };
      default = "r0";
    };
  };
  "2" = {
    sha256 = "c3a487964a8077d8868cb91dc4c2d4a8e9b552c1d25dbc83f50a97164a12c0b2";
    revisions = {
      r0 = {
        nix = import ../hackage/xorshift-2-r0-6cd0b8dc5d1fbb86cf59a68a0967f3a152e44e2080ba1f35f1d0dce68137972c.nix;
        revNum = 0;
        sha256 = "6cd0b8dc5d1fbb86cf59a68a0967f3a152e44e2080ba1f35f1d0dce68137972c";
      };
      default = "r0";
    };
  };
  "2.0.1" = {
    sha256 = "2e975d3e0b35acce5297363d41440ae2f856261dbce851e1880ce5f8b465f3dd";
    revisions = {
      r0 = {
        nix = import ../hackage/xorshift-2.0.1-r0-90fb03d2388068a61ef2f22db0a5d10d43b7befa60d552e4884e4b81c4abcb52.nix;
        revNum = 0;
        sha256 = "90fb03d2388068a61ef2f22db0a5d10d43b7befa60d552e4884e4b81c4abcb52";
      };
      default = "r0";
    };
  };
}