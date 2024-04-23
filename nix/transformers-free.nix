{
  "1.0.0" = {
    sha256 = "f039b7634f5efbdf13e2557138f78547ab197b5a30b9885246e2df307a68eb98";
    revisions = {
      r0 = {
        nix = import ../hackage/transformers-free-1.0.0-r0-e384df1a1831af181cbe86eee9e56c5358aabff1f3f58c38a05966524ee3cfb7.nix;
        revNum = 0;
        sha256 = "e384df1a1831af181cbe86eee9e56c5358aabff1f3f58c38a05966524ee3cfb7";
      };
      r1 = {
        nix = import ../hackage/transformers-free-1.0.0-r1-5b88821ba6877e030a0a77e1ca73fe9488979985696a3690f3d658d4f2fe8888.nix;
        revNum = 1;
        sha256 = "5b88821ba6877e030a0a77e1ca73fe9488979985696a3690f3d658d4f2fe8888";
      };
      default = "r1";
    };
  };
  "1.0.1" = {
    sha256 = "e08b197351a03537b57f561d133e7266f4baf916638c88397a166f174f9e7f39";
    revisions = {
      r0 = {
        nix = import ../hackage/transformers-free-1.0.1-r0-cdd6460f7cc68c708c2fc86f48ba587f7b352dfc2ecf9ea30b0a4e56057abc31.nix;
        revNum = 0;
        sha256 = "cdd6460f7cc68c708c2fc86f48ba587f7b352dfc2ecf9ea30b0a4e56057abc31";
      };
      r1 = {
        nix = import ../hackage/transformers-free-1.0.1-r1-f17896283725026a294f9f071226f73b66bd4609a408399393ccc62b9efc71fe.nix;
        revNum = 1;
        sha256 = "f17896283725026a294f9f071226f73b66bd4609a408399393ccc62b9efc71fe";
      };
      r2 = {
        nix = import ../hackage/transformers-free-1.0.1-r2-2168051b4ab9a55d6bbdf88783063bd6099566b940975d9bc47616c791e347ce.nix;
        revNum = 2;
        sha256 = "2168051b4ab9a55d6bbdf88783063bd6099566b940975d9bc47616c791e347ce";
      };
      default = "r2";
    };
  };
}