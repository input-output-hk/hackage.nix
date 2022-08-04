{
  "0.1.0.0" = {
    sha256 = "4944d79bc9e8aff6c4dd5c31358bfb1213c3293fcafab2a03d46dfcd6cfdc0e3";
    revisions = {
      r0 = {
        nix = import ../hackage/cointracking-imports-0.1.0.0-r0-42cf5d7c00059b041d9e76fbaa4dee9284465e8c8940a07d2394ddbc5dcc0040.nix;
        revNum = 0;
        sha256 = "42cf5d7c00059b041d9e76fbaa4dee9284465e8c8940a07d2394ddbc5dcc0040";
        };
      default = "r0";
      };
    };
  "0.1.0.1" = {
    sha256 = "21b95ccd1521bcc09c743e471db66aeaf7c558782b3f9604bc8bbda8914536a6";
    revisions = {
      r0 = {
        nix = import ../hackage/cointracking-imports-0.1.0.1-r0-76885641705c1d197347018428542afc121aea80000d4030ee7556326a7e2e14.nix;
        revNum = 0;
        sha256 = "76885641705c1d197347018428542afc121aea80000d4030ee7556326a7e2e14";
        };
      r1 = {
        nix = import ../hackage/cointracking-imports-0.1.0.1-r1-6914858654212541b080bca81eb798ee3fa71a50db2294892b9bdbedc29d98dd.nix;
        revNum = 1;
        sha256 = "6914858654212541b080bca81eb798ee3fa71a50db2294892b9bdbedc29d98dd";
        };
      default = "r1";
      };
    };
  }