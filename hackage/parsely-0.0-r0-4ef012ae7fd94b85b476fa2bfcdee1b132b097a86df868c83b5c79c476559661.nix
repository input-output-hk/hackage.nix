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
      specVersion = "0";
      identifier = { name = "parsely"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "naesten@gmail.com";
      author = "Samuel Bronson";
      homepage = "http://naesten.dyndns.org:8080/repos/parsely";
      url = "";
      synopsis = "";
      description = "Typeclasses for parsing monads, and some instances";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }