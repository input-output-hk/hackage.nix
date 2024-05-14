{
  "2.0" = {
    sha256 = "3915f183dc7db7df5bd85e0fee834796668c6450e7d469be799d93a0379cc552";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-license-manager-2.0-r0-aed27ed0bda7b605868844e3325727ea199416b3fed99d212e8b57c20d84625a.nix;
        revNum = 0;
        sha256 = "aed27ed0bda7b605868844e3325727ea199416b3fed99d212e8b57c20d84625a";
      };
      r1 = {
        nix = import ../hackage/amazonka-license-manager-2.0-r1-205cd04ec46ea7466dc7ea857468f3232f969d09876c82514467f74a7754c6a5.nix;
        revNum = 1;
        sha256 = "205cd04ec46ea7466dc7ea857468f3232f969d09876c82514467f74a7754c6a5";
      };
      default = "r1";
    };
  };
}