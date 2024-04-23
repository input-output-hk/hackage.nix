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
      identifier = { name = "tasty-laws"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/tasty-laws";
      url = "";
      synopsis = "Test common laws";
      description = "Preassembled 'tasty' 'TestTree's for property testing 'Monoid', 'Functor',\n'Applicative' and 'Monad' laws.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          (hsPkgs."smallcheck-laws" or (errorHandler.buildDepError "smallcheck-laws"))
          (hsPkgs."smallcheck-series" or (errorHandler.buildDepError "smallcheck-series"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
        buildable = true;
      };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."smallcheck-laws" or (errorHandler.buildDepError "smallcheck-laws"))
            (hsPkgs."tasty-laws" or (errorHandler.buildDepError "tasty-laws"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
          buildable = true;
        };
      };
    };
  }