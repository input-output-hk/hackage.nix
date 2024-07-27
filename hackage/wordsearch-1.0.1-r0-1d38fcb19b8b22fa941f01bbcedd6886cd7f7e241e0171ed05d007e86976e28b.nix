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
      specVersion = "1.6";
      identifier = { name = "wordsearch"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "KrabbyKrap@gmail.com";
      author = "Byron James Johnson";
      homepage = "";
      url = "";
      synopsis = "A word search solver library and executable";
      description = "A word search solver library and executable";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.ghc.components.exes.ghc or (pkgs.pkgsBuildBuild.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
        ];
        buildable = true;
      };
      exes = {
        "wordsearch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.ghc.components.exes.ghc or (pkgs.pkgsBuildBuild.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
          ];
          buildable = true;
        };
      };
    };
  }