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
      identifier = { name = "uuagc-cabal"; version = "1.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Universiteit Utrecht";
      maintainer = "Atze Dijkstra (atzedijkstra@gmail.com)";
      author = "Software Technology at Universiteit Utrecht";
      homepage = "https://github.com/UU-ComputerScience/uuagc";
      url = "";
      synopsis = "Cabal plugin for UUAGC";
      description = "Cabal plugin for the Universiteit Utrecht Attribute Grammar System";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }