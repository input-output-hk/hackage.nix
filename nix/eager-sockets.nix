{
  "0.1" = {
    sha256 = "abbd5f7565685d756de895600b3f977863e56abd2a6dbda9b90a710841e1e881";
    revisions = {
      r0 = {
        nix = import ../hackage/eager-sockets-0.1-r0-34021bcb9e8eb121068353806d0d8182ad5619a5cbf2604990c207a94b996e31.nix;
        revNum = 0;
        sha256 = "34021bcb9e8eb121068353806d0d8182ad5619a5cbf2604990c207a94b996e31";
      };
      r1 = {
        nix = import ../hackage/eager-sockets-0.1-r1-2bf99bcdc9b979fbe9394e8b77bd1fa9b713da8e04981939cb0ae41b0b2a1963.nix;
        revNum = 1;
        sha256 = "2bf99bcdc9b979fbe9394e8b77bd1fa9b713da8e04981939cb0ae41b0b2a1963";
      };
      default = "r1";
    };
  };
}