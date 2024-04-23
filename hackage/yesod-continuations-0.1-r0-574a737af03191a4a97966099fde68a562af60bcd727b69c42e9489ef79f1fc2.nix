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
      specVersion = "1.2";
      identifier = { name = "yesod-continuations"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@softmechanics.net";
      author = "Matt Brown";
      homepage = "https://github.com/softmechanics/yesod-continuations/";
      url = "";
      synopsis = "Continuations for Yesod";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."datetime" or (errorHandler.buildDepError "datetime"))
          (hsPkgs."hashmap" or (errorHandler.buildDepError "hashmap"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."system-uuid" or (errorHandler.buildDepError "system-uuid"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = { "yesodContinuationsTest" = { buildable = true; }; };
    };
  }