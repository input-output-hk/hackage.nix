{
  "1.0.0" = {
    sha256 = "bc48d8434237808f5db5f188dbbc92b8f30e548c500f78c743a90c6792c121f4";
    revisions = {
      r0 = {
        nix = import ../hackage/stc-lang-1.0.0-r0-b3e3d02e3338caeb1c6241fcff3ca606a21b95248a87c5536eb6fbe76d80567d.nix;
        revNum = 0;
        sha256 = "b3e3d02e3338caeb1c6241fcff3ca606a21b95248a87c5536eb6fbe76d80567d";
        };
      r1 = {
        nix = import ../hackage/stc-lang-1.0.0-r1-7594add72637b9773d458f1c573337268f79513315abeae21e860809a6c853ba.nix;
        revNum = 1;
        sha256 = "7594add72637b9773d458f1c573337268f79513315abeae21e860809a6c853ba";
        };
      default = "r1";
      };
    };
  }