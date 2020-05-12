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
    flags = { testing = false; demos = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "vty-ui"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <jtd@galois.com>";
      author = "Jonathan Daugherty <jtd@galois.com>";
      homepage = "http://codevine.org/vty-ui/";
      url = "";
      synopsis = "An interactive terminal user interface library\nfor Vty";
      description = "An extensible library of user interface widgets\nfor composing and laying out Vty user interfaces.\nThis library provides a collection of widgets for\nbuilding and composing interactive interactive,\nevent-driven terminal interfaces.  This library\nis intended to make non-trivial user interfaces\neasy to express and modify without having to\nworry about terminal size.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "vty-ui-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = if !flags.testing then false else true;
          };
        "vty-ui-list-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
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
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "vty-ui-dirbrowser-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "vty-ui-phoneinput-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "vty-ui-dialog-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = if !flags.demos then false else true;
          };
        };
      };
    }