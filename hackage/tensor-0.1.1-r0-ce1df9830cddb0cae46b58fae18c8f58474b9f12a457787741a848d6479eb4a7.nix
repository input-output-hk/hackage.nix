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
      identifier = { name = "tensor"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Federico Squartini, Nicola Squartini";
      homepage = "";
      url = "";
      synopsis = "A completely type-safe library for linear algebra";
      description = "This library defines data types and classes for fixed dimension\nvectors and tensors. See @\"Data.Tensor.Examples\"@ for a short\ntutorial.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.ghc.components.exes.ghc or (pkgs.buildPackages.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
          ];
        buildable = true;
        };
      };
    }