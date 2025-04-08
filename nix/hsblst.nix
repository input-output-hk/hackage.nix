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
  "0.0.3" = {
    sha256 = "2f725c96e16ffcd91f18a37fff4b1e0bd6cf07fe54e5b158760654b03c2bc35d";
    revisions = {
      r0 = {
        nix = import ../hackage/hsblst-0.0.3-r0-0e1c3f46c4b35fb2e10f733ebfa12f5d9af29fbe00a61ea4cda8430cd2d5f349.nix;
        revNum = 0;
        sha256 = "0e1c3f46c4b35fb2e10f733ebfa12f5d9af29fbe00a61ea4cda8430cd2d5f349";
      };
      default = "r0";
    };
  };
  "0.0.4" = {
    sha256 = "4fa365a0f4dcd4cdf91f8ffee6c0ca819baabc49e587815718d7025115fab48d";
    revisions = {
      r0 = {
        nix = import ../hackage/hsblst-0.0.4-r0-10bd7f150c68e1661e7c276a61669ff7501292ec5e2654eba391d66540d5482a.nix;
        revNum = 0;
        sha256 = "10bd7f150c68e1661e7c276a61669ff7501292ec5e2654eba391d66540d5482a";
      };
      r1 = {
        nix = import ../hackage/hsblst-0.0.4-r1-5e069ce486b1a14ac305c6b4f6971ec671dbbd1283cd77848f265f34d3a397b3.nix;
        revNum = 1;
        sha256 = "5e069ce486b1a14ac305c6b4f6971ec671dbbd1283cd77848f265f34d3a397b3";
      };
      default = "r1";
    };
  };
}