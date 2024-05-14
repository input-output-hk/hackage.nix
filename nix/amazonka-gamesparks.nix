{
  "2.0" = {
    sha256 = "ca17b8a53b51a89bdcf65205da784657a807ea46793cbde765975ad38910ef42";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-gamesparks-2.0-r0-e96dd5362ca6cb24578c8865cf4d700991fdbddf71e5fb8539ac20fa710211ef.nix;
        revNum = 0;
        sha256 = "e96dd5362ca6cb24578c8865cf4d700991fdbddf71e5fb8539ac20fa710211ef";
      };
      r1 = {
        nix = import ../hackage/amazonka-gamesparks-2.0-r1-fba1928e1f5de6258f895bc4afb4816402f0948c5ef4954df282049a5bb5b9f2.nix;
        revNum = 1;
        sha256 = "fba1928e1f5de6258f895bc4afb4816402f0948c5ef4954df282049a5bb5b9f2";
      };
      default = "r1";
    };
  };
}