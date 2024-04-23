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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cmdlib"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@mornfall.net";
      author = "Petr Rockai";
      homepage = "";
      url = "";
      synopsis = "a library for command line parsing & online help";
      description = "An alternative to cmdargs, based on getopt. Comes with a powerful\nattribute system. Supports complex interfaces with many options\nand commands, with option & command grouping, while at the same\ntime keeping simple things simple.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
      exes = {
        "cmdlib-test" = { buildable = if !flags.test then false else true; };
        "cmdlib-rectest" = { buildable = if !flags.test then false else true; };
      };
    };
  }