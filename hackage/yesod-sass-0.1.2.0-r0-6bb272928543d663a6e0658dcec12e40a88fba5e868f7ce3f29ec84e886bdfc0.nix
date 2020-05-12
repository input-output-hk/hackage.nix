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
      identifier = { name = "yesod-sass"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Felipe Garay";
      maintainer = "felipe.garay@usach.cl";
      author = "Felipe Garay";
      homepage = "";
      url = "";
      synopsis = "A simple quasiquoter to include sass code in yesod";
      description = "This is a simple quasiquoter to include sass code in yesod.\nYou can use wsass to create a widget in the same way as\nlucius.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsass" or (errorHandler.buildDepError "hsass"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          ];
        buildable = true;
        };
      };
    }