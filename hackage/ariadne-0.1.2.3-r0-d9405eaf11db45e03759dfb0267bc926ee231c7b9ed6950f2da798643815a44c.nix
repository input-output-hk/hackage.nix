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
      identifier = { name = "ariadne"; version = "0.1.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/ariadne";
      url = "";
      synopsis = "Go-to-definition for Haskell";
      description = "See <https://github.com/feuerbach/ariadne#ariadne>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ariadne-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-names" or (errorHandler.buildDepError "haskell-names"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."haskell-packages" or (errorHandler.buildDepError "haskell-packages"))
            (hsPkgs."hse-cpp" or (errorHandler.buildDepError "hse-cpp"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bert" or (errorHandler.buildDepError "bert"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
            (hsPkgs."data-lens-fd" or (errorHandler.buildDepError "data-lens-fd"))
            (hsPkgs."data-lens-template" or (errorHandler.buildDepError "data-lens-template"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bert" or (errorHandler.buildDepError "bert"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }