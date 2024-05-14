{
  "2.0" = {
    sha256 = "6597c52d3d9b94d664fb129387b8c039edfe758496497c7e5279c8dea00cb2bc";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-apprunner-2.0-r0-a3e03b374da6bb747fe92f02904bfcf0a1451e49d1bff39653cd342531b5a75c.nix;
        revNum = 0;
        sha256 = "a3e03b374da6bb747fe92f02904bfcf0a1451e49d1bff39653cd342531b5a75c";
      };
      r1 = {
        nix = import ../hackage/amazonka-apprunner-2.0-r1-8b43b1c9666bd213bd1e8a8e3b8cd734b337081ae784e8d41fd3e417ca0f2071.nix;
        revNum = 1;
        sha256 = "8b43b1c9666bd213bd1e8a8e3b8cd734b337081ae784e8d41fd3e417ca0f2071";
      };
      default = "r1";
    };
  };
}