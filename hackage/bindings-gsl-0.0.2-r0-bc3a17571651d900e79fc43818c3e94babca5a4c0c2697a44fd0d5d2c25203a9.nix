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
      specVersion = "1.2";
      identifier = { name = "bindings-gsl"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-gsl";
      url = "";
      synopsis = "Low level bindings to GNU GSL.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-common" or (errorHandler.buildDepError "bindings-common"))
        ];
        pkgconfig = [
          (pkgconfPkgs."gsl" or (errorHandler.pkgConfDepError "gsl"))
        ];
        buildable = true;
      };
    };
  }