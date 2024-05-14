{
  "2.0" = {
    sha256 = "dcb44f9fb122758dc9a03ab5f26ae46e181e7c018bedb7b5cdd001e04c684317";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-evidently-2.0-r0-b84cbf1772045f163313b2917bc54ec401ffafea3d2edd72457a697f851bb702.nix;
        revNum = 0;
        sha256 = "b84cbf1772045f163313b2917bc54ec401ffafea3d2edd72457a697f851bb702";
      };
      r1 = {
        nix = import ../hackage/amazonka-evidently-2.0-r1-2b9d32d1bea53da044624b98cc407b4fa5db8f6fa57c059b66bc94a269a88c9c.nix;
        revNum = 1;
        sha256 = "2b9d32d1bea53da044624b98cc407b4fa5db8f6fa57c059b66bc94a269a88c9c";
      };
      default = "r1";
    };
  };
}