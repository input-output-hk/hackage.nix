{
  "1.0.0.0" = {
    sha256 = "58b2cf3e8c7dbec2dbb30a94cd85fa0058b58335cb06d1616339b8440a06e74c";
    revisions = {
      r0 = {
        nix = import ../hackage/unfork-1.0.0.0-r0-317afbb3cb27e1a19b7bd2df831754275a36bc9ff1ff29b97321ec341271ac31.nix;
        revNum = 0;
        sha256 = "317afbb3cb27e1a19b7bd2df831754275a36bc9ff1ff29b97321ec341271ac31";
      };
      r1 = {
        nix = import ../hackage/unfork-1.0.0.0-r1-7e8c2cd54e89956da09321ea50070c052fc7b75949d8ff1e5275e6cfb2f794ef.nix;
        revNum = 1;
        sha256 = "7e8c2cd54e89956da09321ea50070c052fc7b75949d8ff1e5275e6cfb2f794ef";
      };
      default = "r1";
    };
  };
  "1.0.0.1" = {
    sha256 = "556611e7918d4ded3e8b21c77c581e82032905b9a7b435c31c6a9d93e954e265";
    revisions = {
      r0 = {
        nix = import ../hackage/unfork-1.0.0.1-r0-d04b7bf9d33a7fceadbf8113fce4c848385f2c06387ec85de0f357048e5b725e.nix;
        revNum = 0;
        sha256 = "d04b7bf9d33a7fceadbf8113fce4c848385f2c06387ec85de0f357048e5b725e";
      };
      r1 = {
        nix = import ../hackage/unfork-1.0.0.1-r1-b6a21112fcd269c965ee39112e8ed11242870d323f760983674292bfe83378d0.nix;
        revNum = 1;
        sha256 = "b6a21112fcd269c965ee39112e8ed11242870d323f760983674292bfe83378d0";
      };
      default = "r1";
    };
  };
  "1.0.0.2" = {
    sha256 = "ffc4cf639dc71c42434b3818a0f52c119e56df7ed7f6e617e6e42dcf4485baaa";
    revisions = {
      r0 = {
        nix = import ../hackage/unfork-1.0.0.2-r0-85da2767f4d024b9cd82c03de9c305b7324a2829e40aa6af7ddf05966d21f6c7.nix;
        revNum = 0;
        sha256 = "85da2767f4d024b9cd82c03de9c305b7324a2829e40aa6af7ddf05966d21f6c7";
      };
      default = "r0";
    };
  };
}