{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "laop"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "armandoifsantos@gmail.com";
      author = "Armando Santos";
      homepage = "https://github.com/bolt12/laop#readme";
      url = "";
      synopsis = "An inductive matrix definition library à la LAoP";
      description = "Please see the README on GitHub at <https://github.com/bolt12/laop#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "laop-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."laop" or ((hsPkgs.pkgs-errors).buildDepError "laop"))
            ];
          buildable = true;
          };
        };
      };
    }