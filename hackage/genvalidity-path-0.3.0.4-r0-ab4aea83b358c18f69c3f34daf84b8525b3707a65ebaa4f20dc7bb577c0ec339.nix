{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "genvalidity-path"; version = "0.3.0.4"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2020 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for Path";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
          (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
          (hsPkgs."validity-path" or ((hsPkgs.pkgs-errors).buildDepError "validity-path"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-path-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."genvalidity-hspec" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-path" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-path"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "genvalidity-path-bench" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
            (hsPkgs."genvalidity-criterion" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-criterion"))
            (hsPkgs."genvalidity-path" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-path"))
            (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
            ];
          buildable = true;
          };
        };
      };
    }