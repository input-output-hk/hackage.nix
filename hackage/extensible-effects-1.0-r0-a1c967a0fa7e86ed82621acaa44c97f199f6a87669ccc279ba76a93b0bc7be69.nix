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
      identifier = { name = "extensible-effects"; version = "1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "benjamin.foppa@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Extensible Effects: An Alternative to Monad Transformers (http://okmij.org/ftp/Haskell/extensible/exteff.pdf)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }