{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3.0";
      identifier = { name = "n-m"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008 Marco Túlio Gontijo e Silva <marcot@riseup.net>";
      maintainer = "Marco Túlio Gontijo e Silva <marcot@riseup.net>";
      author = "Marco Túlio Gontijo e Silva";
      homepage = "";
      url = "";
      synopsis = "Utility to call iwconfig.";
      description = "This program choses between the available open wireless networks and tries to\nconnect to them using DHCP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "n-m" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."HSH" or ((hsPkgs.pkgs-errors).buildDepError "HSH"))
            ];
          buildable = true;
          };
        };
      };
    }