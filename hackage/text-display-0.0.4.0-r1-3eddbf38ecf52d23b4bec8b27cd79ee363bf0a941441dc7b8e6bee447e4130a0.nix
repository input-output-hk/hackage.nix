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
    flags = { book = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "text-display"; version = "0.0.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hécate Moonlight";
      author = "Hécate Moonlight";
      homepage = "https://hackage.haskell.org/package/text-display/docs/doc/book/Introduction.html";
      url = "";
      synopsis = "A typeclass for user-facing output";
      description = "The 'Display' typeclass provides a solution for user-facing output that does not have to abide by the rules of the Show typeclass.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "book" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."literatex" or (errorHandler.buildDepError "literatex"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            ];
          buildable = if !flags.book then false else true;
          };
        };
      tests = {
        "text-display-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
            ];
          buildable = true;
          };
        };
      };
    }