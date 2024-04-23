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
      identifier = { name = "Munkres-simple"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jjvk2@cam.ac.uk";
      author = "Josh Kirklin";
      homepage = "";
      url = "";
      synopsis = "Simple and typesafe layer over the Munkres package.";
      description = "Simple and typesafe layer over the Munkres package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."Munkres" or (errorHandler.buildDepError "Munkres"))
        ];
        buildable = true;
      };
    };
  }