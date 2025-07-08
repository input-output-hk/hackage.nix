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
      specVersion = "3.4";
      identifier = { name = "xcframework"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2025 Rodrigo Mesquita";
      maintainer = "rodrigo.m.mesquita@gmail.com";
      author = "Rodrigo Mesquita";
      homepage = "https://github.com/alt-romes/haskell-swift";
      url = "";
      synopsis = "Cabal hooks for producing an XCFramework from a Haskell library";
      description = "Cabal hooks for producing an XCFramework from a\nHaskell library bundling the library binary artifact,\nthe RTS and foreign-exports headers, and a modulemap\nexporting the headers as Swift modules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."Cabal-hooks" or (errorHandler.buildDepError "Cabal-hooks"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
        ];
        buildable = true;
      };
    };
  }