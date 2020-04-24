{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { semirings = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mod"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2019 Andrew Lelechenko";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      homepage = "https://github.com/Bodigrim/mod";
      url = "";
      synopsis = "Fast type-safe modular arithmetic";
      description = "<https://en.wikipedia.org/wiki/Modular_arithmetic Modular arithmetic>,\npromoting moduli to the type level, with an emphasis on performance.\nOriginally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          ] ++ (pkgs.lib).optional (flags.semirings) (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"));
        buildable = true;
        };
      tests = {
        "mod-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mod" or ((hsPkgs.pkgs-errors).buildDepError "mod"))
            (hsPkgs."quickcheck-classes-base" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-classes-base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ] ++ (pkgs.lib).optionals (flags.semirings) [
            (hsPkgs."quickcheck-classes" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-classes"))
            (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "mod-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mod" or ((hsPkgs.pkgs-errors).buildDepError "mod"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }