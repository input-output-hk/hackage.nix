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
      identifier = {
        name = "control-monad-exception-mtl";
        version = "0.8.0.4";
        };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://pepeiborra.github.com/control-monad-exception";
      url = "";
      synopsis = "MTL instances for the EMT exceptions monad transformer";
      description = "MTL instances for the EMT exceptions monad transformer\n\n/This package is only applicable for the now-deprecated mtl v1. Since mtl v2 is compatible with the transformers package, users of mtl2 should simply use the control-monad-exception package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."control-monad-exception" or (errorHandler.buildDepError "control-monad-exception"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }