{
  "0.1.0.0" = {
    sha256 = "3598f79c2aeb160516ebf5fd55d0caf2cbd8f906f4e8fd17752c059b31f0b062";
    revisions = {
      r0 = {
        nix = import ../hackage/deeplearning-hs-0.1.0.0-r0-b706cdce23365aed169b8d666f4b005ea319a21e968ec66a1952e890db9614a6.nix;
        revNum = 0;
        sha256 = "b706cdce23365aed169b8d666f4b005ea319a21e968ec66a1952e890db9614a6";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "007ecc7e683b1f1d4dea8292fe65313390c48992a19a484cfadae784e98c033b";
    revisions = {
      r0 = {
        nix = import ../hackage/deeplearning-hs-0.1.0.1-r0-a1575f2b4845a5ee726fc2d9c2e8c0856470092633395392c696ebc021b5fa28.nix;
        revNum = 0;
        sha256 = "a1575f2b4845a5ee726fc2d9c2e8c0856470092633395392c696ebc021b5fa28";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "0da58dd777b5a9d097cef43dede6f72cca18d56577cab131106bfaa7634f82b3";
    revisions = {
      r0 = {
        nix = import ../hackage/deeplearning-hs-0.1.0.2-r0-c122a378642d640599028bd4407eee9505819edd3875abbe7a691592436558da.nix;
        revNum = 0;
        sha256 = "c122a378642d640599028bd4407eee9505819edd3875abbe7a691592436558da";
      };
      r1 = {
        nix = import ../hackage/deeplearning-hs-0.1.0.2-r1-eca23efe079b6311afd52bf1a70f8b9617c2b943e13b2ddb0ac2be5249622afa.nix;
        revNum = 1;
        sha256 = "eca23efe079b6311afd52bf1a70f8b9617c2b943e13b2ddb0ac2be5249622afa";
      };
      default = "r1";
    };
  };
}