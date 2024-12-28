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
      identifier = { name = "haskell-src-exts-simple"; version = "1.23.1.0"; };
      license = "MIT";
      copyright = "2016-2024, Bertram Felgenhauer";
      maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
      author = "Bertram Felgenhauer";
      homepage = "https://github.com/int-e/haskell-src-exts-simple";
      url = "";
      synopsis = "A simplified view on the haskell-src-exts AST";
      description = "This package provides a shim for haskell-src-exts (HSE), exposing the\nsame AST but without annotations, using ghc's pattern synonyms.\n\nSee README.md for further information and compatibility considerations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
        ];
        buildable = true;
      };
    };
  }