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
    flags = { examples = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "brick-panes"; version = "1.0.0.2"; };
      license = "ISC";
      copyright = "(c) Kevin Quick, 2022";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "https://github.com/kquick/brick-panes";
      url = "";
      synopsis = "Panes library for Brick providing composition and isolation for TUI apps.";
      description = "The Panes library is an overlay for Brick that allows individual TUI\nscreen areas to be independently developed and then easily composed\ninto the overall application.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
        ];
        buildable = true;
      };
      exes = {
        "mywork-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."brick-panes" or (errorHandler.buildDepError "brick-panes"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
      tests = {
        "brick-panes-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick-panes" or (errorHandler.buildDepError "brick-panes"))
          ];
          buildable = true;
        };
      };
    };
  }