{
  "0.1.0.0" = {
    sha256 = "9155b496d0d24bdf4432cf7c895ccbf551a7ff639dfd2aca5e91512e611c752c";
    revisions = {
      r0 = {
        nix = import ../hackage/ephemeral-pg-0.1.0.0-r0-f421288c63acd6ac1129edb014f8987b6a996fac14105fac9cb2bd9547dc2cc1.nix;
        revNum = 0;
        sha256 = "f421288c63acd6ac1129edb014f8987b6a996fac14105fac9cb2bd9547dc2cc1";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "711dd323743b4ffc1c03ea9d4e6ed6378f71102dda8b2d35b5cdcfe8d5f1340c";
    revisions = {
      r0 = {
        nix = import ../hackage/ephemeral-pg-0.2.0.0-r0-1a8b3878ce80eb5e0dbd0911e8d84c1c5160298e19c7ab914e7ea218d23c951b.nix;
        revNum = 0;
        sha256 = "1a8b3878ce80eb5e0dbd0911e8d84c1c5160298e19c7ab914e7ea218d23c951b";
      };
      default = "r0";
    };
  };
}