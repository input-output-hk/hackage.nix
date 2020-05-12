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
        version = "0.8.0.3";
        };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://pepeiborra.github.com/control-monad-exception";
      url = "";
      synopsis = "MTL instances for the EMT exceptions monad transformer";
      description = "MTL instances for the EMT exceptions monad transformer";
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