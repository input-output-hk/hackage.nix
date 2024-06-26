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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "quickcheck-script"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2000-2003, Koen Claessen, John Hughes";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Koen Claessen <koen@cs.chalmers.se>, John Hughes <rjmh@cs.chalmers.se>";
      homepage = "http://www.cs.chalmers.se/~rjmh/QuickCheck/";
      url = "";
      synopsis = "Automated test tool for QuickCheck.";
      description = "A program to invoke quickCheck for all properties in a module (this version invokes ghci, but is easily modified to other interpreters instead).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "quickCheck" = {
          depends = if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
        };
      };
    };
  }