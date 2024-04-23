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
      identifier = { name = "lambdaFeed"; version = "0.3.1"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2006 Manuel M T Chakravarty";
      maintainer = "chak@cse.unsw.edu.au";
      author = "Manuel M T Chakravarty";
      homepage = "http://www.cse.unsw.edu.au/~chak/haskell/lambdaFeed/";
      url = "";
      synopsis = "RSS 2.0 feed generator";
      description = "LambdaFeed generates RSS 2.0 XML feeds and matching HTML files.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "lambdaFeed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
          ];
          buildable = true;
        };
      };
    };
  }