{
  "0.1.0.0" = {
    sha256 = "461936c6381f4532cd07c04cdb3ccbc073eb6f14ab46c1a029a798d2c3b785e9";
    revisions = {
      r0 = {
        nix = import ../hackage/kioku-core-0.1.0.0-r0-5a04df091f996975bc3b9cfc200bc048ae2e190afb19e1183838c87d04b10627.nix;
        revNum = 0;
        sha256 = "5a04df091f996975bc3b9cfc200bc048ae2e190afb19e1183838c87d04b10627";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "ce90173fe9f2300be33a3b6acd5ae59ec196f7e5f3254a56d4fe0b2c1c0c6f87";
    revisions = {
      r0 = {
        nix = import ../hackage/kioku-core-0.2.0.0-r0-4a7b2022e818a2c435f92f1127277c960e90101cfa6d974844a656a7208ea48f.nix;
        revNum = 0;
        sha256 = "4a7b2022e818a2c435f92f1127277c960e90101cfa6d974844a656a7208ea48f";
      };
      default = "r0";
    };
  };
}