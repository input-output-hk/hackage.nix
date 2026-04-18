{
  "0.1.0.0" = {
    sha256 = "756dbd150aca32ff8ac11dd2d1a225c648aa99bbc65d629dc1899283de5dc7f3";
    revisions = {
      r0 = {
        nix = import ../hackage/crem-0.1.0.0-r0-59802923990f768b089c5593e86b3ecf268545717514c88850ad1db015c51baf.nix;
        revNum = 0;
        sha256 = "59802923990f768b089c5593e86b3ecf268545717514c88850ad1db015c51baf";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "e47b30525fe0fee290dd8a3546fb2d3d8cf5e4be64eb650e9f1bcb408dd610cf";
    revisions = {
      r0 = {
        nix = import ../hackage/crem-0.1.1.0-r0-caa8d131f32c05e88cafd875042229089dc19de31a84958f23f17e941f27c2d0.nix;
        revNum = 0;
        sha256 = "caa8d131f32c05e88cafd875042229089dc19de31a84958f23f17e941f27c2d0";
      };
      default = "r0";
    };
  };
}