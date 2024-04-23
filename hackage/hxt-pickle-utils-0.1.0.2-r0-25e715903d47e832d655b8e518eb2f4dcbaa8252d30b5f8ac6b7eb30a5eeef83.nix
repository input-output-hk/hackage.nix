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
      identifier = { name = "hxt-pickle-utils"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014, Silk";
      maintainer = "code@silk.co";
      author = "Silk";
      homepage = "https://github.com/silkapp/hxt-pickle-utils";
      url = "";
      synopsis = "Utility functions for using HXT picklers.";
      description = "Utility functions for using HXT picklers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }