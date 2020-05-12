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
      specVersion = "1.9.2";
      identifier = { name = "alfred"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paba@di.ku.dk";
      author = "Patrick Bahr";
      homepage = "";
      url = "";
      synopsis = "utility library for Alfred version 2";
      description = "A utility library for writing workflows for Alfred version 2\n(<http://www.alfredapp.com>). Examples can be found at\n<https://github.com/pa-ba/alfred/tree/master/examples>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xmlgen" or (errorHandler.buildDepError "xmlgen"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
          ];
        buildable = true;
        };
      };
    }