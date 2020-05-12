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
      identifier = { name = "closure"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2013 Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson";
      homepage = "http://github.com/tel/closure";
      url = "";
      synopsis = "Depth- and breadth-first set closures";
      description = "Fast set closure operators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }