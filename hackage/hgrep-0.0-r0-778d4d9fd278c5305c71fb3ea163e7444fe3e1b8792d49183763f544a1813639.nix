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
      identifier = { name = "hgrep"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tim@utf8.me";
      author = "Tim Humphries";
      homepage = "https://github.com/thumphries/hgrep";
      url = "";
      synopsis = "Search Haskell source code from the command line";
      description = "Search Haskell source code from the command line.\n\nPowered by <https://hackage.haskell.org/package/ghc-exactprint ghc-exactprint>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-exactprint" or (errorHandler.buildDepError "ghc-exactprint"))
          (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-bifunctors" or (errorHandler.buildDepError "transformers-bifunctors"))
          ];
        buildable = true;
        };
      exes = {
        "hgrep" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hgrep" or (errorHandler.buildDepError "hgrep"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }