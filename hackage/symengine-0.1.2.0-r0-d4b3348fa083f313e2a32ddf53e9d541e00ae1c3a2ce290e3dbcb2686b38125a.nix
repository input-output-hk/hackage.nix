{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "symengine-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."symengine" or (errorHandler.buildDepError "symengine"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          libs = [
            (pkgs."symengine" or (errorHandler.sysDepError "symengine"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
            (pkgs."gmpxx" or (errorHandler.sysDepError "gmpxx"))
            (pkgs."gmp" or (errorHandler.sysDepError "gmp"))
            ];
          buildable = true;
          };
        };
      };
    }