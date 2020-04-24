{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "freer-simple-time"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Ben Weitzman";
      maintainer = "ben@costarastrology.com";
      author = "Ben Weitzman";
      homepage = "";
      url = "";
      synopsis = "freer-simple interface to IO based time functions";
      description = "Please see the README on Gitlab at <https://gitlab.com/costar-astrology/freer-simple-contrib/tree/master/freer-simple-time>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."freer-simple" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "freer-simple-time-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."freer-simple" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple"))
            (hsPkgs."freer-simple-time" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple-time"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }