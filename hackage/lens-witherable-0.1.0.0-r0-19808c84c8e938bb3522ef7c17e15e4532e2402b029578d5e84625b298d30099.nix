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
      specVersion = "2.4";
      identifier = { name = "lens-witherable"; version = "0.1.0.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ];
        buildable = true;
      };
    };
  }