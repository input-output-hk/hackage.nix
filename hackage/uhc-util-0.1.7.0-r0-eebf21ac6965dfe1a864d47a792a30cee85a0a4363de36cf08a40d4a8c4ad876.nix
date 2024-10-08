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
      identifier = { name = "uhc-util"; version = "0.1.7.0"; };
      license = "BSD-3-Clause";
      copyright = "Atze Dijkstra & Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "atzedijkstra@gmail.com";
      author = "Atze Dijkstra";
      homepage = "https://github.com/UU-ComputerScience/uhc-util";
      url = "";
      synopsis = "UHC utilities";
      description = "General purpose utilities for UHC and related tools";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."time-compat" or (errorHandler.buildDepError "time-compat"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."logict-state" or (errorHandler.buildDepError "logict-state"))
          (hsPkgs."pqueue" or (errorHandler.buildDepError "pqueue"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."chr-pretty" or (errorHandler.buildDepError "chr-pretty"))
          (hsPkgs."chr-parse" or (errorHandler.buildDepError "chr-parse"))
          (hsPkgs."chr-data" or (errorHandler.buildDepError "chr-data"))
          (hsPkgs."chr-core" or (errorHandler.buildDepError "chr-core"))
        ];
        buildable = true;
      };
    };
  }