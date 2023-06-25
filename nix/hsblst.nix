{
  "0.0.1" = {
    sha256 = "a05295fd6f40b4d593f80345e4343f43bb63cd6419dcf74237526f7e1fb368a9";
    revisions = {
      r0 = {
        nix = import ../hackage/hsblst-0.0.1-r0-6611cabbc39933b437cd017059d356dd521eac129f1621880c7207b79ba60941.nix;
        revNum = 0;
        sha256 = "6611cabbc39933b437cd017059d356dd521eac129f1621880c7207b79ba60941";
        };
      default = "r0";
      };
    };
  "0.0.2" = {
    sha256 = "d1f626741ba1f785cabf9dc8bbba8af2d4b8e998f02fd4f76af367124e2e5223";
    revisions = {
      r0 = {
        nix = import ../hackage/hsblst-0.0.2-r0-2845c005255685deabf5d9d2041eb6bd29df421df77c2ae4be2566f32365c6e8.nix;
        revNum = 0;
        sha256 = "2845c005255685deabf5d9d2041eb6bd29df421df77c2ae4be2566f32365c6e8";
        };
      r1 = {
        nix = import ../hackage/hsblst-0.0.2-r1-32cad173138a2f3800b6f1c6d320b655a220b6f4bebbd6643ddda08346257291.nix;
        revNum = 1;
        sha256 = "32cad173138a2f3800b6f1c6d320b655a220b6f4bebbd6643ddda08346257291";
        };
      default = "r1";
      };
    };
  }