{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "abc-puzzle"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "patrick.bahr@gmail.com";
      author = "Patrick Bahr";
      homepage = "https://github.com/pa-ba/abc-puzzle";
      url = "";
      synopsis = "Generate instances of the ABC logic puzzle.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "abc-puzzle" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."minisat" or ((hsPkgs.pkgs-errors).buildDepError "minisat"))
            (hsPkgs."Safe" or ((hsPkgs.pkgs-errors).buildDepError "Safe"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }