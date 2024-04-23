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
      specVersion = "1.2";
      identifier = { name = "vty-ui"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <drcygnus@gmail.com>";
      author = "Jonathan Daugherty <drcygnus@gmail.com>";
      homepage = "http://repos.codevine.org/vty-ui/";
      url = "";
      synopsis = "A user interface composition library for Vty";
      description = "An extensible library of user interface widgets\nfor composing and laying out Vty user interfaces.\nThis library provides a collection of widgets and\na type class for rendering widgets to Vty Images.\nThis library is intended to make non-trivial user\ninterfaces trivial to express and modify without\nhaving to worry about terminal size.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
        ];
        buildable = true;
      };
      exes = {
        "vty-ui-demo" = {
          depends = [ (hsPkgs."mtl" or (errorHandler.buildDepError "mtl")) ];
          buildable = true;
        };
      };
    };
  }