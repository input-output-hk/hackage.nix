{
  "0.0.0" = {
    sha256 = "58cd5448d0a1807f90f06f5acbc316487c482bce0119d35d28f8bd1424189117";
    revisions = {
      r0 = {
        nix = import ../hackage/apis-0.0.0-r0-297b7e3db0653c18d97865ceac324ca9ca72e4c5db9a7fcb1706f01b14f504ce.nix;
        revNum = 0;
        sha256 = "297b7e3db0653c18d97865ceac324ca9ca72e4c5db9a7fcb1706f01b14f504ce";
      };
      r1 = {
        nix = import ../hackage/apis-0.0.0-r1-946d15c620efc9f6050bc02708abac6ab6788678b9160e57a78c99a87d33424a.nix;
        revNum = 1;
        sha256 = "946d15c620efc9f6050bc02708abac6ab6788678b9160e57a78c99a87d33424a";
      };
      default = "r1";
    };
  };
  "0.0.1" = {
    sha256 = "f8988b196e83e1bfc445f05cb3a860ed54bcabce3ecd44094d1347a757e85b1e";
    revisions = {
      r0 = {
        nix = import ../hackage/apis-0.0.1-r0-68393bf71356f777701bf65465bcca786bc7819f4db68bec5c175c743e519a6b.nix;
        revNum = 0;
        sha256 = "68393bf71356f777701bf65465bcca786bc7819f4db68bec5c175c743e519a6b";
      };
      default = "r0";
    };
  };
}