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
      specVersion = "1.12";
      identifier = { name = "file-path-th"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Dan Fithian";
      author = "";
      homepage = "https://github.com/Simspace/file-path-th#readme";
      url = "";
      synopsis = "Template Haskell utilities for filepaths.";
      description = "Template Haskell utilities for filepaths. This package has utilities for embedding relative filepaths using Template Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }