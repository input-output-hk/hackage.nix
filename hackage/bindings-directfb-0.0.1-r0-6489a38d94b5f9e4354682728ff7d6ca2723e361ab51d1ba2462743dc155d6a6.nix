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
      specVersion = "1.2.3";
      identifier = { name = "bindings-directfb"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-directfb";
      url = "";
      synopsis = "Low level bindings to DirectFB";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-common" or (errorHandler.buildDepError "bindings-common"))
          (hsPkgs."bindings-posix" or (errorHandler.buildDepError "bindings-posix"))
          ];
        pkgconfig = [
          (pkgconfPkgs."directfb" or (errorHandler.pkgConfDepError "directfb"))
          ];
        buildable = true;
        };
      };
    }