{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "castagnoli"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/castagnoli";
      url = "";
      synopsis = "Portable CRC-32C";
      description = "Portable implementation of CRC-32C.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."primitive-unlifted" or ((hsPkgs.pkgs-errors).buildDepError "primitive-unlifted"))
          (hsPkgs."primitive-slice" or ((hsPkgs.pkgs-errors).buildDepError "primitive-slice"))
          (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."castagnoli" or ((hsPkgs.pkgs-errors).buildDepError "castagnoli"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            ];
          buildable = true;
          };
        };
      };
    }