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
      identifier = { name = "gochan"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2016 Charles Strahan";
      maintainer = "Charles Strahan <charles@cstrahan.com>";
      author = "Charles Strahan <charles@cstrahan.com>";
      homepage = "http://github.com/cstrahan/gochan";
      url = "";
      synopsis = "Go-style channels";
      description = "This library provides bounded channels similar to those popularized\nby the Go programming language.\n\nTHIS LIBRARY IS STILL ALPHA AND SUBJECT TO CHANGE.\n\nBreaking changes during the 0.0.X series won't result in a major\nversion bump (I hope to release a stable 1.0.0 soon).\n\nPlease give gochan a try and file an issue or pull request if you\ndiscover any ways to improve this library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
      exes = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."gochan" or (errorHandler.buildDepError "gochan"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "weight" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
            (hsPkgs."gochan" or (errorHandler.buildDepError "gochan"))
          ];
          buildable = true;
        };
      };
      tests = {
        "fuzz" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."gochan" or (errorHandler.buildDepError "gochan"))
          ];
          buildable = true;
        };
      };
    };
  }