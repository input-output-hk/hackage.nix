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
      identifier = { name = "gutenberg-fibonaccis"; version = "1.0.5"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) 2011-2012, Justin Hanekom <justin.hanekom@gmail.com>";
      maintainer = "justin.hanekom@gmail.com";
      author = "Justin Hanekom";
      homepage = "http://hackage.haskell.org/package/gutenberg-fibonaccis";
      url = "";
      synopsis = "The first 1001 Fibonacci numbers, retrieved from the Gutenberg Project.";
      description = "Provides the first 1001 Fibonacci numbers, retrieved from the Gutenberg Project,\nalong with functions to retrieve and query these numbers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }