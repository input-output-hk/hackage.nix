{
  "0.0.1.0" = {
    sha256 = "ea55037681fa4f76061c52b0c97ad445869added1e8f9d5ecfdcf5f7c886c2bf";
    revisions = {
      r0 = {
        nix = import ../hackage/zigzag-0.0.1.0-r0-a995158dad3dfe0347cfc8f8a9327cc3f51832600553169ba5b1e08c45b45405.nix;
        revNum = 0;
        sha256 = "a995158dad3dfe0347cfc8f8a9327cc3f51832600553169ba5b1e08c45b45405";
        };
      r1 = {
        nix = import ../hackage/zigzag-0.0.1.0-r1-ac2f78aa02457ac12d17621c692d29ad30bae205b5be858fbf0e400ac9a9c412.nix;
        revNum = 1;
        sha256 = "ac2f78aa02457ac12d17621c692d29ad30bae205b5be858fbf0e400ac9a9c412";
        };
      r2 = {
        nix = import ../hackage/zigzag-0.0.1.0-r2-54baa181badcb470386af790e148483bd1d43951bb2b02ed0684d70aeb4c7395.nix;
        revNum = 2;
        sha256 = "54baa181badcb470386af790e148483bd1d43951bb2b02ed0684d70aeb4c7395";
        };
      default = "r2";
      };
    };
  }