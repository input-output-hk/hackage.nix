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
    flags = { no-tests = false; demos = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "vty-ui"; version = "1.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
      author = "Jonathan Daugherty <cygnus@foobox.com>";
      homepage = "http://jtdaugherty.github.com/vty-ui/";
      url = "";
      synopsis = "An interactive terminal user interface library for Vty";
      description = "An extensible library of user interface widgets for composing and\nlaying out Vty user interfaces.  This library provides a collection\nof widgets for building and composing interactive,\nevent-driven terminal interfaces.  This library is intended to make\nnon-trivial user interfaces easy to express and modify without\nhaving to worry about terminal size.\n\nBe sure to check out the user manual for the version you're using\nat: <http://jtdaugherty.github.com/vty-ui/>\n\nBuild with the 'demos' flag to get a set of demonstration programs\nto see some of the things the library can do!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
      exes = {
        "vty-ui-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
          buildable = if flags.no-tests then false else true;
        };
        "vty-ui-collection-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "vty-ui-list-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "vty-ui-progressbar-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "vty-ui-complex-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "vty-ui-dirbrowser-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "vty-ui-phoneinput-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "vty-ui-dialog-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "vty-ui-edit-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
          buildable = if !flags.demos then false else true;
        };
      };
    };
  }