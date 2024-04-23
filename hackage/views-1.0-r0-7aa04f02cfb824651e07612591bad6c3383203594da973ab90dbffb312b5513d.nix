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
      identifier = { name = "views"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Coiffier <marc.coiffier@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Views allow you to run a State monad on part of a state. ";
      description = "A package library defining Views.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }