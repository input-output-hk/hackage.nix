{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "byteunits"; version = "0.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrissound (Chris Stryczynski)";
      author = "chrissound (Chris Stryczynski)";
      homepage = "https://github.com/chrissound/byteunits#readme";
      url = "";
      synopsis = "Human friendly conversion between byte units (KB, MB, GB...)";
      description = "Human friendly conversion between byte units (KB, MB, GB...)...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          ];
        buildable = true;
        };
      tests = {
        "testing-example" = {
          depends = [
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."byteunits" or ((hsPkgs.pkgs-errors).buildDepError "byteunits"))
            ];
          buildable = true;
          };
        };
      };
    }