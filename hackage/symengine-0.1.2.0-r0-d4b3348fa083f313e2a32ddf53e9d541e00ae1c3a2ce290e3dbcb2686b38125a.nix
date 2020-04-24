{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "symengine"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "2016 Siddharth Bhat";
      maintainer = "siddu.druid@gmail.com";
      author = "Siddharth Bhat";
      homepage = "http://github.com/symengine/symengine.hs#readme";
      url = "";
      synopsis = "SymEngine symbolic mathematics engine for Haskell";
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
        "symengine-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."symengine" or ((hsPkgs.pkgs-errors).buildDepError "symengine"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          libs = [
            (pkgs."symengine" or ((hsPkgs.pkgs-errors).sysDepError "symengine"))
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            (pkgs."gmpxx" or ((hsPkgs.pkgs-errors).sysDepError "gmpxx"))
            (pkgs."gmp" or ((hsPkgs.pkgs-errors).sysDepError "gmp"))
            ];
          buildable = true;
          };
        };
      };
    }