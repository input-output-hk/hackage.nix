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
      identifier = { name = "hstats"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, SFTank";
      maintainer = "mbeddoe@<nospam>sftank.net";
      author = "Marshall Beddoe";
      homepage = "http://www.sftank.net";
      url = "";
      synopsis = "Statistical Computing in Haskell";
      description = "A library of commonly used statistical functions";
      buildType = "Custom";
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