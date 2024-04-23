{
  "0.1" = {
    sha256 = "5f2820de0e25847ace980132c04913c7ec61333e2b20cce49e2062765caa8967";
    revisions = {
      r0 = {
        nix = import ../hackage/setters-0.1-r0-a9c5907c8d4e1e8b370a0833992ee4b9dd157be1eff28856b35ad827c9a1a83e.nix;
        revNum = 0;
        sha256 = "a9c5907c8d4e1e8b370a0833992ee4b9dd157be1eff28856b35ad827c9a1a83e";
      };
      r1 = {
        nix = import ../hackage/setters-0.1-r1-c4ff7321208bb4f71ea367d5a1811d7c13aadda0d05a1d9ddb25fff5e31c9365.nix;
        revNum = 1;
        sha256 = "c4ff7321208bb4f71ea367d5a1811d7c13aadda0d05a1d9ddb25fff5e31c9365";
      };
      default = "r1";
    };
  };
}