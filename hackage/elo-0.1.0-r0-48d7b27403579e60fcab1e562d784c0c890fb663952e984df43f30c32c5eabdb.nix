{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "elo"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Mark Fine";
      maintainer = "mark.fine@gmail.com";
      author = "Mark Fine";
      homepage = "http://github.com/mfine/elo";
      url = "";
      synopsis = "Elo Rating Library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "elo-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elo" or ((hsPkgs.pkgs-errors).buildDepError "elo"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            ];
          buildable = true;
          };
        };
      };
    }