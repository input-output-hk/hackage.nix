{
  "0.1" = {
    sha256 = "03455602293e88a9860129f0c2825db907257923dabf5fa9684de955b6e27088";
    revisions = {
      r0 = {
        nix = import ../hackage/Piso-0.1-r0-a3a68056cce6d407e5a416daa7288da28c7fda20429673463dd0b7a88444f2d2.nix;
        revNum = 0;
        sha256 = "a3a68056cce6d407e5a416daa7288da28c7fda20429673463dd0b7a88444f2d2";
        };
      r1 = {
        nix = import ../hackage/Piso-0.1-r1-77d29f8dce634a2f727ea0927a4da4fc3d09b9b28aeabfed8799fd6c8ba611f8.nix;
        revNum = 1;
        sha256 = "77d29f8dce634a2f727ea0927a4da4fc3d09b9b28aeabfed8799fd6c8ba611f8";
        };
      default = "r1";
      };
    };
  "0.2" = {
    sha256 = "36dd199c6799d7f171928d5d57b3dbd621dadb019fc1fc7cf5d62cf2e1e43f1f";
    revisions = {
      r0 = {
        nix = import ../hackage/Piso-0.2-r0-167da0bf2c98d8f44615b3222eb82bf66567df4418980aa523af139fc971966b.nix;
        revNum = 0;
        sha256 = "167da0bf2c98d8f44615b3222eb82bf66567df4418980aa523af139fc971966b";
        };
      default = "r0";
      };
    };
  }