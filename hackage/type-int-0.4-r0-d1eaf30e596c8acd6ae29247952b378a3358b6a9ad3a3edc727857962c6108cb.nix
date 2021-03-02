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
      specVersion = "1.0";
      identifier = { name = "type-int"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2006 Edward Kmett. All Rights Reserved";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://slipwave.info/";
      url = "";
      synopsis = "Type Level 2s- and 16s- Complement Integers";
      description = "Type level 2s- and 16s- complement Integers (positive and negative), Booleans, Ord and Eq";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }