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
    flags = { unsafe = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "judy"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008, Don Stewart <dons@galois.com>";
      maintainer = "Mark Wotton <mwotton@gmail.com>";
      author = "Don Stewart";
      homepage = "http://github.com/mwotton/judy";
      url = "";
      synopsis = "Fast, scalable, mutable dynamic arrays, maps and hashes";
      description = "Fast, scalable, mutable dynamic arrays, maps and hashes";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [ (pkgs."Judy" or (errorHandler.sysDepError "Judy")) ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."judy" or (errorHandler.buildDepError "judy"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }