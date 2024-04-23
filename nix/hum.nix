{
  "0.1.0.0" = {
    sha256 = "3ec8bd793179278079393b93cfb1533783709ccba72b96bfe5644e10c593fe1b";
    revisions = {
      r0 = {
        nix = import ../hackage/hum-0.1.0.0-r0-03f8aeb470e2a7663495c1d88be65d75dbdb3ef10890125d4b0de7cab4936743.nix;
        revNum = 0;
        sha256 = "03f8aeb470e2a7663495c1d88be65d75dbdb3ef10890125d4b0de7cab4936743";
      };
      r1 = {
        nix = import ../hackage/hum-0.1.0.0-r1-115171c3f822848952c3dbb262ce3b21201ee6c2b64d903395009d2d658314f8.nix;
        revNum = 1;
        sha256 = "115171c3f822848952c3dbb262ce3b21201ee6c2b64d903395009d2d658314f8";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "4b98e408f5b4fa7d1112383fb6285ce54ba0a562a7be4da75795ee1c4c088b90";
    revisions = {
      r0 = {
        nix = import ../hackage/hum-0.2.0.0-r0-206d3d4a70b7c4e28c655ddf31492b67e742148f7c39f31e41c28ed7826f5f6a.nix;
        revNum = 0;
        sha256 = "206d3d4a70b7c4e28c655ddf31492b67e742148f7c39f31e41c28ed7826f5f6a";
      };
      r1 = {
        nix = import ../hackage/hum-0.2.0.0-r1-715aad05b79109b306c9145c2d7b6f65147d110f199b9354d34db612314da11d.nix;
        revNum = 1;
        sha256 = "715aad05b79109b306c9145c2d7b6f65147d110f199b9354d34db612314da11d";
      };
      r2 = {
        nix = import ../hackage/hum-0.2.0.0-r2-b3f209c4d495937b6e1bee8686787b5bb76b6b1903331cc99d534386bd3d100e.nix;
        revNum = 2;
        sha256 = "b3f209c4d495937b6e1bee8686787b5bb76b6b1903331cc99d534386bd3d100e";
      };
      r3 = {
        nix = import ../hackage/hum-0.2.0.0-r3-e3beb234efa4bb2dffe7089d2f2c82016e3f558c856628aaa7f80bfb8acb44f2.nix;
        revNum = 3;
        sha256 = "e3beb234efa4bb2dffe7089d2f2c82016e3f558c856628aaa7f80bfb8acb44f2";
      };
      default = "r3";
    };
  };
}