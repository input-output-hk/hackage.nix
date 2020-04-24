{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jord"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Cedric Liegeois";
      maintainer = "Cedric Liegeois <ofmooseandmen@yahoo.com>";
      author = "Cedric Liegeois";
      homepage = "https://github.com/ofmooseandmen/jord";
      url = "";
      synopsis = "Geographical Position Calculations";
      description = "Please see the README on GitHub at <https://github.com/ofmooseandmen/jord#readme>";
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
        "jord-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."jord" or ((hsPkgs.pkgs-errors).buildDepError "jord"))
            ];
          buildable = true;
          };
        };
      tests = {
        "jord-test" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."jord" or ((hsPkgs.pkgs-errors).buildDepError "jord"))
            ];
          buildable = true;
          };
        };
      };
    }