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
      identifier = { name = "find-clumpiness"; version = "0.2.0.1"; };
      license = "GPL-2.0-only";
      copyright = "Copyright 2015 Gregory W. Schwartz";
      maintainer = "gregory.schwartz@drexel.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/find-clumpiness#readme";
      url = "";
      synopsis = "Find the clumpiness of labels in a tree";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clumpiness" or (errorHandler.buildDepError "clumpiness"))
          (hsPkgs."tree-fun" or (errorHandler.buildDepError "tree-fun"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
        buildable = true;
        };
      exes = {
        "find-clumpiness" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."find-clumpiness" or (errorHandler.buildDepError "find-clumpiness"))
            (hsPkgs."clumpiness" or (errorHandler.buildDepError "clumpiness"))
            (hsPkgs."tree-fun" or (errorHandler.buildDepError "tree-fun"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }