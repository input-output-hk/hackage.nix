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
      identifier = { name = "reasonable-lens"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(C) 2014 Tokiwo Ousaka";
      maintainer = "Tokiwo Ousaka";
      author = "Tokiwo Ousaka";
      homepage = "https://github.com/tokiwoousaka/reasonable-lens";
      url = "";
      synopsis = "Just size lens implementation.";
      description = "Lens implementation. It is more small but adequate.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }