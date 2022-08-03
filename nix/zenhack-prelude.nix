{
  "0.1.0.0" = {
    sha256 = "4db813396bd472911c2a6ec1c7499bd97a98be9e60c7fcb3b943a58ed05f398a";
    revisions = {
      r0 = {
        nix = import ../hackage/zenhack-prelude-0.1.0.0-r0-26534ae5a638df5f81cc9e1f11aa75cdfb409cfdb54b480bb12d015e5a1eafdb.nix;
        revNum = 0;
        sha256 = "26534ae5a638df5f81cc9e1f11aa75cdfb409cfdb54b480bb12d015e5a1eafdb";
        };
      default = "r0";
      };
    };
  "0.1.1.0" = {
    sha256 = "2e844e04a233bce5f9642f11ed110abd6e1eec967180c7a3efdf9cb43ed1d21e";
    revisions = {
      r0 = {
        nix = import ../hackage/zenhack-prelude-0.1.1.0-r0-cc28b9925321947107568b33905cdb0024d1185aad16c8e38b1a4c5c14c47380.nix;
        revNum = 0;
        sha256 = "cc28b9925321947107568b33905cdb0024d1185aad16c8e38b1a4c5c14c47380";
        };
      r1 = {
        nix = import ../hackage/zenhack-prelude-0.1.1.0-r1-1ffdc0ad17e7c25786ef671f5889c165b325265b6d85ef4518a38fb1c52c446a.nix;
        revNum = 1;
        sha256 = "1ffdc0ad17e7c25786ef671f5889c165b325265b6d85ef4518a38fb1c52c446a";
        };
      default = "r1";
      };
    };
  }