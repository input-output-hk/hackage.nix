{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "symengine-hs"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2016 Siddharth Bhat";
      maintainer = "siddu.druid@gmail.com";
      author = "Siddharth Bhat";
      homepage = "http://github.com/bollu/symengine.hs#readme";
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
      exes = {
        "symengine-hs-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."symengine-hs" or ((hsPkgs.pkgs-errors).buildDepError "symengine-hs"))
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
      tests = {
        "symengine-hs-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."symengine-hs" or ((hsPkgs.pkgs-errors).buildDepError "symengine-hs"))
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