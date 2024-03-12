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
    flags = { top-level-witherable = true; };
    package = {
      specVersion = "2.4";
      identifier = { name = "lens-witherable"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2021-2022 Carl Howells";
      maintainer = "chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "https://github.com/chowells79/lens-witherable";
      url = "";
      synopsis = "lens-compatible tools for working with witherable";
      description = "Provides tools for integrating the witherable package with lens\ncombinators. See README.md for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ [
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }