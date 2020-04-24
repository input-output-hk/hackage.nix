{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "SimpleTableGenerator"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "klntsky@openmailbox.org";
      author = "klntsky";
      homepage = "";
      url = "";
      synopsis = "Simple table generator";
      description = "Pass a 2D-list of strings and get a single string with table contents.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        buildable = true;
        };
      tests = {
        "test-main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."SimpleTableGenerator" or ((hsPkgs.pkgs-errors).buildDepError "SimpleTableGenerator"))
            ];
          buildable = true;
          };
        };
      };
    }