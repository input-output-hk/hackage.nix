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
      identifier = { name = "ports"; version = "0.4.3.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Manuel M T Chakravarty";
      homepage = "http://www.cse.unsw.edu.au/~chak/haskell/ports/";
      url = "";
      synopsis = "The Haskell Ports Library";
      description = "The Haskell Ports Library (HPL) supports /concurrent/ and /distributed Haskell/\nprogramming in the IO monad _without_ relying on mutable variables.\nInstead, it supplies monotone single-assignment variable and ports\nabstractions.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
    };
  }