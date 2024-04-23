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
    flags = { benchmark = false; test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "toktok"; version = "0.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Grégoire Détrez <gdetrez@crans.org>";
      author = "Grégoire Détrez <gdetrez@crans.org>";
      homepage = "";
      url = "";
      synopsis = "";
      description = "An ambiguous tokenizer for GF";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        buildable = true;
      };
      exes = {
        "toktok-benchmark" = {
          depends = [
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."progression" or (errorHandler.buildDepError "progression"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if !flags.benchmark then false else true;
        };
        "toktok-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = if !flags.test then false else true;
        };
        "toktok" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."gf" or (errorHandler.buildDepError "gf"))
            (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"))
          ];
          buildable = true;
        };
        "gf-extract-lexicon" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }