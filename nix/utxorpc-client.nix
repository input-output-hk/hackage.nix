{
  "0.0.1.0" = {
    sha256 = "c56c9c55aa163672eee43256dcf7411f2aa58e79ab47a3d342249b9c31247f94";
    revisions = {
      r0 = {
        nix = import ../hackage/utxorpc-client-0.0.1.0-r0-5a47a9b49e38e456fb8d729c5d47fba6dc6c6428aa9f326923ede2f3170a227d.nix;
        revNum = 0;
        sha256 = "5a47a9b49e38e456fb8d729c5d47fba6dc6c6428aa9f326923ede2f3170a227d";
      };
      default = "r0";
    };
  };
  "0.0.1.1" = {
    sha256 = "91052493c3323948e0456ad9e5c8cd08d15789d4785fd31b6f58ebf4a045a8d0";
    revisions = {
      r0 = {
        nix = import ../hackage/utxorpc-client-0.0.1.1-r0-1f3256d5a2fd83751b0f794d4c0b7cf5417a171bd27e57068fb87fe3cd62cb7d.nix;
        revNum = 0;
        sha256 = "1f3256d5a2fd83751b0f794d4c0b7cf5417a171bd27e57068fb87fe3cd62cb7d";
      };
      r1 = {
        nix = import ../hackage/utxorpc-client-0.0.1.1-r1-5ad99d2e377947a0f17c57568e41bdbb03acaf273779bcb2f13732bf86cd0ad3.nix;
        revNum = 1;
        sha256 = "5ad99d2e377947a0f17c57568e41bdbb03acaf273779bcb2f13732bf86cd0ad3";
      };
      default = "r1";
    };
  };
}