{
  "0.1.0.0" = {
    sha256 = "6984d014efae8ab25783c839f1273f63d30a472304bdd8ad7924711e84569ab0";
    revisions = {
      r0 = {
        nix = import ../hackage/minion-0.1.0.0-r0-58efbb99f96ae7347f606f0f99405afd64e8082feee5f86fc52734f2b8626041.nix;
        revNum = 0;
        sha256 = "58efbb99f96ae7347f606f0f99405afd64e8082feee5f86fc52734f2b8626041";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "cbe10fa90ce2f113b4d2ccb29a2ef5225b063f7983a90bdbd03c65b38f66d9d5";
    revisions = {
      r0 = {
        nix = import ../hackage/minion-0.1.0.1-r0-d8042562024067ed65a186675aa9a4f9655eb5de69bd7fa3e6549a49be1d8da6.nix;
        revNum = 0;
        sha256 = "d8042562024067ed65a186675aa9a4f9655eb5de69bd7fa3e6549a49be1d8da6";
      };
      default = "r0";
    };
  };
}