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
      identifier = { name = "yaml-light"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael <dot> ilseman <at> gmail <dot> com";
      author = "Michael Ilseman";
      homepage = "";
      url = "";
      synopsis = "A light-weight wrapper with utility functions around HsSyck";
      description = "This package provides a light-weight algebraic data type representing parsed Yaml files. It is implemented as a more conveinent wrapper around the HsSyck package, and provides utility functions as well.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HsSyck" or (errorHandler.buildDepError "HsSyck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }