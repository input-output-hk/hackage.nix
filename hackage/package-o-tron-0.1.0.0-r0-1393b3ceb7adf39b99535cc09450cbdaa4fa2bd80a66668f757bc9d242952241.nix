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
      identifier = { name = "package-o-tron"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Jake Wheat 2012";
      maintainer = "jakewheatmail@gmail.com";
      author = "Jake Wheat";
      homepage = "";
      url = "";
      synopsis = "Utilities for working with cabal packages and your package database";
      description = "Utility to help managing Makefiles for Haskell projects, a cabal lint\nwhich can check the other-modules and build-deps\nsections in your cabal files, and a quick command\nthat can show the direct package dependencies of\na set of Haskell source files. See the README in\nthe repo for more information:\n<https://github.com/JakeWheat/package-o-tron>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
        ];
        buildable = true;
      };
      exes = {
        "Makefilerize" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          ];
          buildable = true;
        };
        "CabalLint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."packdeps" or (errorHandler.buildDepError "packdeps"))
          ];
          buildable = true;
        };
        "ShowPackages" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          ];
          buildable = true;
        };
      };
    };
  }