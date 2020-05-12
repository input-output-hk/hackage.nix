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
      specVersion = "1.8";
      identifier = { name = "takahashi"; version = "0.2.0.2"; };
      license = "MIT";
      copyright = "(C) 2014 Tokiwo Ousaka";
      maintainer = "tokiwoousaka";
      author = "tokiwoousaka";
      homepage = "";
      url = "";
      synopsis = "create slide for presentation.";
      description = "library for create slide for your presentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."reasonable-operational" or (errorHandler.buildDepError "reasonable-operational"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."reasonable-lens" or (errorHandler.buildDepError "reasonable-lens"))
          ];
        buildable = true;
        };
      };
    }