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
      identifier = { name = "dirfiles"; version = "0.1.0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mr.hugo.gomes@gmail.com";
      author = "HugoDaniel";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Simple datatype to represent a library with files and folders";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."hblock" or (errorHandler.buildDepError "hblock"))
          ];
        buildable = true;
        };
      };
    }