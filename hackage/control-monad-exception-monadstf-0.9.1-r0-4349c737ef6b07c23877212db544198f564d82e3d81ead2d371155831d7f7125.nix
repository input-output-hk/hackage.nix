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
        name = "control-monad-exception-monadstf";
        version = "0.9.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://pepeiborra.github.com/control-monad-exception";
      url = "";
      synopsis = "Monads-tf instances for the EMT exceptions monad transformer";
      description = "Monads-tf instances for the EMT exceptions monad transformer";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."control-monad-exception" or (errorHandler.buildDepError "control-monad-exception"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
        ];
        buildable = true;
      };
    };
  }