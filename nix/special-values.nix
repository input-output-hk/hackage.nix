{
  "0.1.0.0" = {
    sha256 = "3c14dd1304dacc8e54c2dcf95ebb3bb74b172b5409b9b45352108a4698e06dce";
    revisions = {
      r0 = {
        nix = import ../hackage/special-values-0.1.0.0-r0-c3cf13fdaa32105416f2f145f334cdb1995d789695c231f37682d9a20a754134.nix;
        revNum = 0;
        sha256 = "c3cf13fdaa32105416f2f145f334cdb1995d789695c231f37682d9a20a754134";
      };
      r1 = {
        nix = import ../hackage/special-values-0.1.0.0-r1-8c362d6e0a3317e28c7269ff12e5feebd36644f46aa1b3b835af4ed22fe9eb82.nix;
        revNum = 1;
        sha256 = "8c362d6e0a3317e28c7269ff12e5feebd36644f46aa1b3b835af4ed22fe9eb82";
      };
      r2 = {
        nix = import ../hackage/special-values-0.1.0.0-r2-2999a62097f1973d87d26f8414a16afbeebf1064b60eea62b4b298269b7f65ef.nix;
        revNum = 2;
        sha256 = "2999a62097f1973d87d26f8414a16afbeebf1064b60eea62b4b298269b7f65ef";
      };
      r3 = {
        nix = import ../hackage/special-values-0.1.0.0-r3-ea855ec644acac84d3a4c9aadae9ba70a11d1d48d00940805dbb81cc95672bbd.nix;
        revNum = 3;
        sha256 = "ea855ec644acac84d3a4c9aadae9ba70a11d1d48d00940805dbb81cc95672bbd";
      };
      default = "r3";
    };
  };
}