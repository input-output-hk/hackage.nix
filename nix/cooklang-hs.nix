{
  "0.1.0.0" = {
    sha256 = "94e64b2ac0bc4e7dbbd24c1bf005648e5c8577b4d4877ceed3db5491ef491b15";
    revisions = {
      r0 = {
        nix = import ../hackage/cooklang-hs-0.1.0.0-r0-e54260bc693bbac51603b770934dc969e8a947c54ad9401ad5cf74d771f478fe.nix;
        revNum = 0;
        sha256 = "e54260bc693bbac51603b770934dc969e8a947c54ad9401ad5cf74d771f478fe";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "633d5abce71b3c50c7350e3b35c44b4b0a40b24eada929e14df160ffc1fddf14";
    revisions = {
      r0 = {
        nix = import ../hackage/cooklang-hs-0.1.1-r0-5370fbc207f23d50c120bfbe78057ca997317fed232803437db6e7d7e2a8f4fb.nix;
        revNum = 0;
        sha256 = "5370fbc207f23d50c120bfbe78057ca997317fed232803437db6e7d7e2a8f4fb";
      };
      default = "r0";
    };
  };
}