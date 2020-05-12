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
      identifier = { name = "takahashi"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "(C) 2014 Tokiwo Ousaka";
      maintainer = "tokiwoousaka";
      author = "tokiwoousaka";
      homepage = "";
      url = "";
      synopsis = "library for takahashi method.";
      description = "create slide as takahashi method.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free-operational" or (errorHandler.buildDepError "free-operational"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."reasonable-lens" or (errorHandler.buildDepError "reasonable-lens"))
          ];
        buildable = true;
        };
      };
    }