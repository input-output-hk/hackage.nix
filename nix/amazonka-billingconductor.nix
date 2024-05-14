{
  "2.0" = {
    sha256 = "b6d2f05a0110f953e4e9e399d29884b03f67e1110dc46f937dd5ebe0186ba233";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-billingconductor-2.0-r0-a4d5300d61b16eae9655d70b81b99027b6459ee1bc417af77be32227026262ac.nix;
        revNum = 0;
        sha256 = "a4d5300d61b16eae9655d70b81b99027b6459ee1bc417af77be32227026262ac";
      };
      r1 = {
        nix = import ../hackage/amazonka-billingconductor-2.0-r1-6749e3509e783acdbc880fa9aae166adffe4d21f955cbed7be07e65241371d12.nix;
        revNum = 1;
        sha256 = "6749e3509e783acdbc880fa9aae166adffe4d21f955cbed7be07e65241371d12";
      };
      default = "r1";
    };
  };
}