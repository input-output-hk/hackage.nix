{
  "0.1.0" = {
    sha256 = "a7c130bbe063334eab88a538994024de8d7d2a60006c45e1a7eca002737863f9";
    revisions = {
      r0 = {
        nix = import ../hackage/ClickHaskell-0.1.0-r0-5439b9f1cc3a68be6cc60fc0691e7f75a68415b83655c6a4e06e1249bd62a111.nix;
        revNum = 0;
        sha256 = "5439b9f1cc3a68be6cc60fc0691e7f75a68415b83655c6a4e06e1249bd62a111";
      };
      r1 = {
        nix = import ../hackage/ClickHaskell-0.1.0-r1-3f3f97114628d66a5ac3cc9a7e308aee5e1c98ecf495b6743ff72bba07d515b5.nix;
        revNum = 1;
        sha256 = "3f3f97114628d66a5ac3cc9a7e308aee5e1c98ecf495b6743ff72bba07d515b5";
      };
      default = "r1";
    };
  };
}