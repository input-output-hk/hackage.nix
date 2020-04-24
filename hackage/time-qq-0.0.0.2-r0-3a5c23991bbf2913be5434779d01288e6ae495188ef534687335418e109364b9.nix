{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "time-qq"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Christian Marie <christian@ponies.io>";
      maintainer = "Christian Marie <christian@ponies.io>";
      author = "Christian Marie <christian@ponies.io>";
      homepage = "https://github.com/christian-marie/time-qq";
      url = "";
      synopsis = "Quasi-quoter for UTCTime times";
      description = "Quasi-quoter for UTCTime times";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."time-locale-compat" or ((hsPkgs.pkgs-errors).buildDepError "time-locale-compat"))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."time-qq" or ((hsPkgs.pkgs-errors).buildDepError "time-qq"))
            ];
          buildable = true;
          };
        };
      };
    }