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
      specVersion = "0";
      identifier = { name = "hstats"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008, Marshall Beddoe";
      maintainer = "mbeddoe@<nospam>gmail.com";
      author = "Marshall Beddoe";
      homepage = "http://github.com/unmarshal/hstats/ ";
      url = "";
      synopsis = "Statistical Computing in Haskell";
      description = "A library of commonly used statistical functions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
        buildable = true;
        };
      };
    }