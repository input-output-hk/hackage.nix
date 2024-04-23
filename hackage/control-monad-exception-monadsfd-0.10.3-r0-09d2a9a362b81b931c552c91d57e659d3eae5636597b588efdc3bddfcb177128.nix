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
      identifier = {
        name = "control-monad-exception-monadsfd";
        version = "0.10.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://pepeiborra.github.com/control-monad-exception";
      url = "";
      synopsis = "Monads-fd instances for the EMT exceptions monad transformer";
      description = "Monads-fd instances for the EMT exceptions monad transformer";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."control-monad-exception" or (errorHandler.buildDepError "control-monad-exception"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
        ];
        buildable = true;
      };
    };
  }