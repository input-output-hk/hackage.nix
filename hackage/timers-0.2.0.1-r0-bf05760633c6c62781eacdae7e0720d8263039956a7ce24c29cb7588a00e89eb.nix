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
      identifier = { name = "timers"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Petr Pilař 2012";
      maintainer = "Petr Pilař <maintainer+the.palmik@gmail.com>";
      author = "Petr Pilař";
      homepage = "";
      url = "";
      synopsis = "Simple package that implements timers.";
      description = "Simple package that implements timers. Both \"one-shot\" and \"repeating\" timers are implemented.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."suspend" or (errorHandler.buildDepError "suspend"))
        ];
        buildable = true;
      };
    };
  }