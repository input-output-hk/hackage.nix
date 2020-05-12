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
      identifier = { name = "luachunk"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright 2012, Anupam Jain. All Rights Reserved.";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "";
      url = "";
      synopsis = "Library functions for reading and writing Lua chunks";
      description = "Library functions for reading and writing Lua chunks";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."custom-prelude" or (errorHandler.buildDepError "custom-prelude"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }