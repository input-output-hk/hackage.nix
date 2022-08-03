{
  "0.1.0.0" = {
    sha256 = "5c7d3e30658ad0d9decde2d5b96c382221e915f2fceeb2e23ae7eb3dd40f91dd";
    revisions = {
      r0 = {
        nix = import ../hackage/clr-host-0.1.0.0-r0-ea5c275837edbc670e9ae35ea16c158b2ac30cb0dede7475c11e23f183227e09.nix;
        revNum = 0;
        sha256 = "ea5c275837edbc670e9ae35ea16c158b2ac30cb0dede7475c11e23f183227e09";
        };
      r1 = {
        nix = import ../hackage/clr-host-0.1.0.0-r1-093131d340d6560ccf3b0c951c2f7201e5eb5e15a3937b3d80918fc6b3b4e715.nix;
        revNum = 1;
        sha256 = "093131d340d6560ccf3b0c951c2f7201e5eb5e15a3937b3d80918fc6b3b4e715";
        };
      default = "r1";
      };
    };
  "0.2.0" = {
    sha256 = "7bb33d12e0b86102c93836f145bbe7c45b0b6f6336fc40e658f31bf9dbfa8074";
    revisions = {
      r0 = {
        nix = import ../hackage/clr-host-0.2.0-r0-e12dffe9d7fd0acaa498f1053840f4097e55f650e810e3daf6a21410620602e4.nix;
        revNum = 0;
        sha256 = "e12dffe9d7fd0acaa498f1053840f4097e55f650e810e3daf6a21410620602e4";
        };
      default = "r0";
      };
    };
  "0.2.0.1" = {
    sha256 = "5306ea1368b922d595159f237877f5b76fb9744e082f8c286c4546dc1a6f0e96";
    revisions = {
      r0 = {
        nix = import ../hackage/clr-host-0.2.0.1-r0-14e83c305db57ae03668e5b3780c6752d577822e33bd01e47404b0bea6974f92.nix;
        revNum = 0;
        sha256 = "14e83c305db57ae03668e5b3780c6752d577822e33bd01e47404b0bea6974f92";
        };
      default = "r0";
      };
    };
  "0.2.1.0" = {
    sha256 = "fe2abf0386c96df6e51cbae4f45e074b54452fc01f9308b098198ade4ffc5ea4";
    revisions = {
      r0 = {
        nix = import ../hackage/clr-host-0.2.1.0-r0-fe6d2e35ba20cc57411a4bb0230fa774f1dc0c75bc9a96ce22bd868e7ee64756.nix;
        revNum = 0;
        sha256 = "fe6d2e35ba20cc57411a4bb0230fa774f1dc0c75bc9a96ce22bd868e7ee64756";
        };
      default = "r0";
      };
    };
  }