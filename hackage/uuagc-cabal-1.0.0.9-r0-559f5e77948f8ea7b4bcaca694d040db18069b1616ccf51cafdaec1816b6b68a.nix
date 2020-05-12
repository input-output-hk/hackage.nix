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
      specVersion = "1.8";
      identifier = { name = "uuagc-cabal"; version = "1.0.0.9"; };
      license = "BSD-3-Clause";
      copyright = "Universiteit Utrecht";
      maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
      author = "Software Technology at Universiteit Utrecht";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "Cabal plugin for the Universiteit Utrecht Attribute Grammar System";
      description = "Cabal plugin for UUAGC";
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
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }