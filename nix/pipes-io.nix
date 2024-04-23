{
  "0.1" = {
    sha256 = "d9454a110860512ca6cf1d7c45f03c507d3bd05eaeba2ea798ed8167e416d499";
    revisions = {
      r0 = {
        nix = import ../hackage/pipes-io-0.1-r0-81c51895069cf887df1e29eac23147b0d6475f2a4d6132d70c51b455f4110512.nix;
        revNum = 0;
        sha256 = "81c51895069cf887df1e29eac23147b0d6475f2a4d6132d70c51b455f4110512";
      };
      r1 = {
        nix = import ../hackage/pipes-io-0.1-r1-7c94944e42ff4eb463759eac4238b9150c91c58ffc75240a826f89981b408702.nix;
        revNum = 1;
        sha256 = "7c94944e42ff4eb463759eac4238b9150c91c58ffc75240a826f89981b408702";
      };
      default = "r1";
    };
  };
}