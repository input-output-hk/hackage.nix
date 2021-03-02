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
      specVersion = "1.0";
      identifier = { name = "queuelike"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "A library of queuelike data structures, both functional and stateful.";
      description = "Contains several implementations of data structures implementing a /single-in, single-out/ paradigm.  Intended to be a better, more useful replacement for pqueue-mtl.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."stateful-mtl" or (errorHandler.buildDepError "stateful-mtl"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          ];
        buildable = true;
        };
      };
    }