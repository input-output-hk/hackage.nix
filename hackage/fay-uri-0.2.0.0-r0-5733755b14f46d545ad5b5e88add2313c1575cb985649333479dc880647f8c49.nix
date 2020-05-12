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
      identifier = { name = "fay-uri"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Adam Bergmark";
      maintainer = "adam@edea.se";
      author = "Adam Bergmark";
      homepage = "https://github.com/faylang/fay-uri";
      url = "";
      synopsis = "Persistent FFI bindings for using jsUri in Fay";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fay-base" or (errorHandler.buildDepError "fay-base"))
          ];
        buildable = true;
        };
      };
    }