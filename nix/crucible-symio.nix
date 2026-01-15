{
  "0.1" = {
    sha256 = "0893fcf654771820ca8f48e4a8895b982f8639fe50931ff670183d7aa60ecc2c";
    revisions = {
      r0 = {
        nix = import ../hackage/crucible-symio-0.1-r0-89f89c1c04655c2b95bb738a1cdfdbf554d51c4c461710479fcad4f2893a9e1d.nix;
        revNum = 0;
        sha256 = "89f89c1c04655c2b95bb738a1cdfdbf554d51c4c461710479fcad4f2893a9e1d";
      };
      r1 = {
        nix = import ../hackage/crucible-symio-0.1-r1-76bb7fd6467c93a8ae2634d97d55713848044fcee7a434b5d1e45ba7d28af8fb.nix;
        revNum = 1;
        sha256 = "76bb7fd6467c93a8ae2634d97d55713848044fcee7a434b5d1e45ba7d28af8fb";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "a7a53120192dadc4e18fe386186750704aeb56988c6aa913834af48623602631";
    revisions = {
      r0 = {
        nix = import ../hackage/crucible-symio-0.1.1-r0-756ae85c7bb36a01532d1b570a47059b5b2d33e86dbf215670de5419bf7dc46b.nix;
        revNum = 0;
        sha256 = "756ae85c7bb36a01532d1b570a47059b5b2d33e86dbf215670de5419bf7dc46b";
      };
      r1 = {
        nix = import ../hackage/crucible-symio-0.1.1-r1-74d026028662c954e977e8d2f2cf89691ce4d0e3df126ad92bc7fedd6bc87f7a.nix;
        revNum = 1;
        sha256 = "74d026028662c954e977e8d2f2cf89691ce4d0e3df126ad92bc7fedd6bc87f7a";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "37123a753b7c3ff1aaa4c5ce4d2bad2e7c4c8419ed966f9e73a0a173b355b8bf";
    revisions = {
      r0 = {
        nix = import ../hackage/crucible-symio-0.2.0.0-r0-f3e7c899f7b3292b52d6c7979f7af8df195a0e112285c44e6249c5a80e47e76d.nix;
        revNum = 0;
        sha256 = "f3e7c899f7b3292b52d6c7979f7af8df195a0e112285c44e6249c5a80e47e76d";
      };
      default = "r0";
    };
  };
}