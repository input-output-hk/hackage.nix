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
      identifier = { name = "haskell-holes-th"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "klntsky@gmail.com";
      author = "klntsky";
      homepage = "";
      url = "";
      synopsis = "Infer haskell code by given type.";
      description = "TIP solver for simply typed lambda calculus to automatically infer the code from type definitions using TemplateHaskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }