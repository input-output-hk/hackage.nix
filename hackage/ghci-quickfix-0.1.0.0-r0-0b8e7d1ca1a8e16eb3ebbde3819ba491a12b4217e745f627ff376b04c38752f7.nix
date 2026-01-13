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
      specVersion = "3.0";
      identifier = { name = "ghci-quickfix"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aaronallen8455@gmail.com";
      author = "Aaron Allen";
      homepage = "";
      url = "";
      synopsis = "GHC plugin that writes errors to a file for use with quickfix";
      description = "GHC plugin that writes errors to a file for use with vim/nvim's quickfix system";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."deferred-folds" or (errorHandler.buildDepError "deferred-folds"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
        ];
        buildable = true;
      };
      tests = {
        "ghci-quickfix-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghci-quickfix" or (errorHandler.buildDepError "ghci-quickfix"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ];
          buildable = true;
        };
      };
    };
  }