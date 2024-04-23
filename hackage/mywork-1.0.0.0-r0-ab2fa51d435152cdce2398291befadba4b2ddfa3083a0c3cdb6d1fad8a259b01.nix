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
      specVersion = "3.0";
      identifier = { name = "mywork"; version = "1.0.0.0"; };
      license = "ISC";
      copyright = "(c) Kevin Quick, 2022";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "https://github.com/kquick/mywork";
      url = "";
      synopsis = "Tool to keep track of what you have been working on and where.";
      description = "The mywork tool is a TUI tool that maintains a list of projects, the various\nlocations for those projects, and notes associated with each location.  This\nis designed to help keep track of what you have been working on, the\nrelationships of the various locations for a project, and to maintain context\nfor that work (assisting a future resumption of work) via the notes.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mywork" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."brick-panes" or (errorHandler.buildDepError "brick-panes"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
          buildable = true;
        };
      };
    };
  }