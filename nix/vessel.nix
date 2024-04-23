{
  "0.1.0.0" = {
    sha256 = "3a7869533900a0da9230375836e99af0b6e27179af84a50af750f9b45e17d148";
    revisions = {
      r0 = {
        nix = import ../hackage/vessel-0.1.0.0-r0-dd64c07fa4dcd36411c1d4ad1638cb02b35e06f7d90f92dcaea14cbe253a476b.nix;
        revNum = 0;
        sha256 = "dd64c07fa4dcd36411c1d4ad1638cb02b35e06f7d90f92dcaea14cbe253a476b";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "a435e15cce90567b9f8cbd514b81a9ab8618d2b6eddcb76d5ac4e1750965ed13";
    revisions = {
      r0 = {
        nix = import ../hackage/vessel-0.2.0.0-r0-5ae092a507b06e3f9960a9ea3d73f63f57dfa9fb1fd6c8203165b2d170fcb71e.nix;
        revNum = 0;
        sha256 = "5ae092a507b06e3f9960a9ea3d73f63f57dfa9fb1fd6c8203165b2d170fcb71e";
      };
      default = "r0";
    };
  };
  "0.2.1.0" = {
    sha256 = "06df809ede530388c5517fa7d334d2b60cc0baac4e67504f48f1dda173b1fb12";
    revisions = {
      r0 = {
        nix = import ../hackage/vessel-0.2.1.0-r0-2044421452ac5c1ceddba4a07ad63d3b663a2176c103c9f2f7c9de0569de8cd2.nix;
        revNum = 0;
        sha256 = "2044421452ac5c1ceddba4a07ad63d3b663a2176c103c9f2f7c9de0569de8cd2";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "0ad761893dd9a172c067e6726aa43385116738ec865285b3c183e4f4d0cf0bef";
    revisions = {
      r0 = {
        nix = import ../hackage/vessel-0.3.0.0-r0-2b35d43d01343ffcbebacd6a10ac06e7f693a49339237b1bbe0aefbe39acc490.nix;
        revNum = 0;
        sha256 = "2b35d43d01343ffcbebacd6a10ac06e7f693a49339237b1bbe0aefbe39acc490";
      };
      r1 = {
        nix = import ../hackage/vessel-0.3.0.0-r1-ddf623501b97411f053d76502cbdadc511cbdd1955a39df0f2c984c23e59cfbe.nix;
        revNum = 1;
        sha256 = "ddf623501b97411f053d76502cbdadc511cbdd1955a39df0f2c984c23e59cfbe";
      };
      default = "r1";
    };
  };
}