{
  "1.0.0.0" = {
    sha256 = "efbb649ab2035b75df388b6cc72f33f488a904316189882735d60d0923918610";
    revisions = {
      r0 = {
        nix = import ../hackage/resourcet-effectful-1.0.0.0-r0-a8359c17b3ee1793ec6dd398c776e656b3897d40819896158c7ec5f608928cf7.nix;
        revNum = 0;
        sha256 = "a8359c17b3ee1793ec6dd398c776e656b3897d40819896158c7ec5f608928cf7";
        };
      r1 = {
        nix = import ../hackage/resourcet-effectful-1.0.0.0-r1-b237007753379f39fe20be375b9b18650558ae347ad9331b2947edcd24a5c137.nix;
        revNum = 1;
        sha256 = "b237007753379f39fe20be375b9b18650558ae347ad9331b2947edcd24a5c137";
        };
      r2 = {
        nix = import ../hackage/resourcet-effectful-1.0.0.0-r2-74e3f8858f84bea9613fc1d58c4af91f6382286fbdd975b28dce3270995802ec.nix;
        revNum = 2;
        sha256 = "74e3f8858f84bea9613fc1d58c4af91f6382286fbdd975b28dce3270995802ec";
        };
      default = "r2";
      };
    };
  }