{
  "0.2.0.0" = {
    sha256 = "a1dea6b576654e8fdbbe0ad9639e99a05f43ae4e0a434dddbc6cece0335c3712";
    revisions = {
      r0 = {
        nix = import ../hackage/igrf-0.2.0.0-r0-615fc5d8de7dc5a53ac82bd54028b7fae9dbaf6e2356cf44751a980526e084c5.nix;
        revNum = 0;
        sha256 = "615fc5d8de7dc5a53ac82bd54028b7fae9dbaf6e2356cf44751a980526e084c5";
        };
      r1 = {
        nix = import ../hackage/igrf-0.2.0.0-r1-7d616cb461fb1406310675937e1e761f2d09757824dce8a92d235b7ef6ce1e4f.nix;
        revNum = 1;
        sha256 = "7d616cb461fb1406310675937e1e761f2d09757824dce8a92d235b7ef6ce1e4f";
        };
      default = "r1";
      };
    };
  "0.4.0.0" = {
    sha256 = "3cf483421e448a67fef1b09fa29dbe2e3efed2dbc21bb074112c53dd39647d58";
    revisions = {
      r0 = {
        nix = import ../hackage/igrf-0.4.0.0-r0-408e3f58adc044cec5174e2a09650097ae2c56b663a4714436ffd0e05b429d2a.nix;
        revNum = 0;
        sha256 = "408e3f58adc044cec5174e2a09650097ae2c56b663a4714436ffd0e05b429d2a";
        };
      default = "r0";
      };
    };
  }