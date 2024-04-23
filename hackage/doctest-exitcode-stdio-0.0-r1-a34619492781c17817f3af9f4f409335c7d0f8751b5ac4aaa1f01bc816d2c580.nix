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
      specVersion = "2.2";
      identifier = { name = "doctest-exitcode-stdio"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://hub.darcs.net/thielema/doctest-exitcode-stdio/";
      url = "";
      synopsis = "Run doctest's in a Cabal.Test.exitcode-stdio environment";
      description = "Run doctest's in a Cabal.Test.exitcode-stdio environment.\nFor use with the @doctest-extract@ utility.\nNormally, you should not need to import a module from this package,\nonly generated code will do this.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }