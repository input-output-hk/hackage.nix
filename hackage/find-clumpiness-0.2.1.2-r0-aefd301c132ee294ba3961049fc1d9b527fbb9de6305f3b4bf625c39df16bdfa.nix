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
      identifier = { name = "find-clumpiness"; version = "0.2.1.2"; };
      license = "GPL-3.0-only";
      copyright = "Copyright 2017 Gregory W. Schwartz";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/find-clumpiness#readme";
      url = "";
      synopsis = "Find the clumpiness of labels in a tree";
      description = "Use a clumpiness measure to find the aggregation relationship between labels inside of a tree.";
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
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."BiobaseNewick" or (errorHandler.buildDepError "BiobaseNewick"))
          (hsPkgs."listsafe" or (errorHandler.buildDepError "listsafe"))
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
            (hsPkgs."BiobaseNewick" or (errorHandler.buildDepError "BiobaseNewick"))
            ];
          buildable = true;
          };
        };
      };
    }