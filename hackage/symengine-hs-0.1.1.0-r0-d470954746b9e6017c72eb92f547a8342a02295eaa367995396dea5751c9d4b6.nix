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
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "symengine-hs-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."symengine-hs" or (errorHandler.buildDepError "symengine-hs"))
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
      tests = {
        "symengine-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."symengine-hs" or (errorHandler.buildDepError "symengine-hs"))
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