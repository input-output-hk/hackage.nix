{
  "2.0" = {
    sha256 = "dc8f766e6985adb1e6529a62e18850665c464e141f334e859680bec0062e42b8";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-migrationhub-config-2.0-r0-342fb714f3051a9569d2984197709bfbc3d24534492433d843aa194a412241ed.nix;
        revNum = 0;
        sha256 = "342fb714f3051a9569d2984197709bfbc3d24534492433d843aa194a412241ed";
      };
      r1 = {
        nix = import ../hackage/amazonka-migrationhub-config-2.0-r1-436f1d28588e5a0ffaff34bd4b78b16f3af9f4b9ea724db7048c04a4b208041b.nix;
        revNum = 1;
        sha256 = "436f1d28588e5a0ffaff34bd4b78b16f3af9f4b9ea724db7048c04a4b208041b";
      };
      default = "r1";
    };
  };
}