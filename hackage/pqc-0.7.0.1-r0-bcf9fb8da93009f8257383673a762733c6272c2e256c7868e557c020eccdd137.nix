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
    flags = { split-base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pqc"; version = "0.7.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Don Stewart 2006-2007, shelarcy 2011-2012";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Don Stewart";
      homepage = "http://darcsden.com/shelarcy/pqc";
      url = "";
      synopsis = "Parallel batch driver for QuickCheck";
      description = "Parallel batch driver for QuickCheck";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
        buildable = true;
        };
      tests = {
        "Example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pqc" or (errorHandler.buildDepError "pqc"))
            (hsPkgs."ChasingBottoms" or (errorHandler.buildDepError "ChasingBottoms"))
            ];
          buildable = true;
          };
        };
      };
    }