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
      specVersion = "2.0";
      identifier = { name = "qtah-generator"; version = "0.8.0"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright 2015-2021 The Qtah Authors.";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/qtah";
      url = "";
      synopsis = "Generator for Qtah Qt bindings";
      description = "Qtah is a set of Qt bindings for Haskell.  This package is a Hoppy FFI\ngenerator.  You shouldn't need it directly; rather, qtah-cpp and qtah use it\nas part of their build processes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hoppy-generator" or (errorHandler.buildDepError "hoppy-generator"))
          (hsPkgs."hoppy-std" or (errorHandler.buildDepError "hoppy-std"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "qtah-generator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qtah-generator" or (errorHandler.buildDepError "qtah-generator"))
          ];
          buildable = true;
        };
      };
    };
  }