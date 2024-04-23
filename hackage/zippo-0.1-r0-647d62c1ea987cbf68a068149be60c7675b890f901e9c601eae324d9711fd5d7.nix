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
      identifier = { name = "zippo"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://brandon.si/code/zippo/";
      url = "";
      synopsis = "A simple lens-based, generic, heterogenous, type-checked zipper library";
      description = "This light-weight library provides a basic, but fully-type-checked\nzipper implementation, suitable for any algebraic data structure.\nOur implementation has no notion of \\\"left\\\" and \\\"right\\\", and\ninstead uses lenses (from the \"yall\" package) to indicate directions\nto \\\"navigate down to\\\".\n\nFor a similar approach with many more features, but less type-safety\nsee \"pez\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."yall" or (errorHandler.buildDepError "yall"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }