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
      specVersion = "1.6";
      identifier = { name = "graph-serialize"; version = "0.1.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Schilling <nominolo@googlemail.com>";
      author = "Thomas Schilling";
      homepage = "http://github.com/nominolo/graph-serialize";
      url = "";
      synopsis = "Serialization of data structures with references.";
      description = "Serialization of data structures with references.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }