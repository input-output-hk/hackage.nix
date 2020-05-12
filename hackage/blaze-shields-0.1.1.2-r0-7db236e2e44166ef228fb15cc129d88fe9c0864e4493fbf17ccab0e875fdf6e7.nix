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
      specVersion = "1.12";
      identifier = { name = "blaze-shields"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "qinka@live.com";
      author = "Qinka";
      homepage = "http://githubcom/Qinka/blaze-shields";
      url = "";
      synopsis = "create svg by Haskell";
      description = "a Haskell version of shields ,which is on github.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }