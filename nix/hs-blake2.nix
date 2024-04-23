{
  "0.0.1" = {
    sha256 = "12844a1a6d189a0fec7615ba42c636cade7621127a400e1535672b8ab4983ba9";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-blake2-0.0.1-r0-b85cab4cb36a65c5469d0fbfcecf23221f4c59ce91463dcce93a10ceb9624019.nix;
        revNum = 0;
        sha256 = "b85cab4cb36a65c5469d0fbfcecf23221f4c59ce91463dcce93a10ceb9624019";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "043efd374194998f4ea54a3e43713fb6a2c6f233673eb0deadf8950f22c31e44";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-blake2-0.0.2-r0-d236d1a006fa13261d0ac3de42ef27521719c1094096bbfa6dc17528eaeecb01.nix;
        revNum = 0;
        sha256 = "d236d1a006fa13261d0ac3de42ef27521719c1094096bbfa6dc17528eaeecb01";
      };
      default = "r0";
    };
  };
}