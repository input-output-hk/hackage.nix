{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pretty-relative-time"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/pretty-relative-time#readme";
      url = "";
      synopsis = "Pretty relative time";
      description = "Please see the README on Github at <https://github.com/NorfairKing/pretty-relative-time#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
          (hsPkgs."validity-time" or ((hsPkgs.pkgs-errors).buildDepError "validity-time"))
          ];
        buildable = true;
        };
      tests = {
        "pretty-relative-time-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."genvalidity-hspec" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-time" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-time"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."pretty-relative-time" or ((hsPkgs.pkgs-errors).buildDepError "pretty-relative-time"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."validity" or ((hsPkgs.pkgs-errors).buildDepError "validity"))
            (hsPkgs."validity-time" or ((hsPkgs.pkgs-errors).buildDepError "validity-time"))
            ];
          buildable = true;
          };
        };
      };
    }