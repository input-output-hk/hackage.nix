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
      specVersion = "1.6";
      identifier = { name = "stm-chans"; version = "3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011--2013 wren ng thornton";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton, Thomas DuBuisson";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Additional types of channels for STM.";
      description = "Additional types of channels for STM.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }