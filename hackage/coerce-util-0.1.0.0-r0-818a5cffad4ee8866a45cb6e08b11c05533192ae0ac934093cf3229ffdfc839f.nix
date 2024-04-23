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
      identifier = { name = "coerce-util"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 (C) chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/coerce-util.git";
      url = "";
      synopsis = "utils for Data.Coerce";
      description = "This library provides some convenience utilities for working with 'Data.Coerce'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }