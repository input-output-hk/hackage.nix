{
  "2.0" = {
    sha256 = "4af22d6a7325b80d24d4065b62757a4d1561bb035ec06cb063f51fcba1109829";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-timestream-query-2.0-r0-cf855596bd682d69d9a077ad9476768aded9e6dcf8444acfb6357ec2941c096c.nix;
        revNum = 0;
        sha256 = "cf855596bd682d69d9a077ad9476768aded9e6dcf8444acfb6357ec2941c096c";
      };
      r1 = {
        nix = import ../hackage/amazonka-timestream-query-2.0-r1-5b7b1fe14e56e2b81966eee9004161b1ba088f9fcca48bb633cde89810d4870b.nix;
        revNum = 1;
        sha256 = "5b7b1fe14e56e2b81966eee9004161b1ba088f9fcca48bb633cde89810d4870b";
      };
      default = "r1";
    };
  };
}