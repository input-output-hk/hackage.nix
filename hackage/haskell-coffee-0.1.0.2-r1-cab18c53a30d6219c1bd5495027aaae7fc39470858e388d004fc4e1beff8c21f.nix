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
      identifier = { name = "haskell-coffee"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2013 Kevin van Rooijen";
      maintainer = "Kevin van Rooijen";
      author = "Kevin van Rooijen";
      homepage = "";
      url = "";
      synopsis = "Simple CoffeeScript API";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
    };
  }