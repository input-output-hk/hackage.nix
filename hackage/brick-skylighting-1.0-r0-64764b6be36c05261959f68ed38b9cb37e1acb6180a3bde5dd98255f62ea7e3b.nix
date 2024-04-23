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
    flags = { demos = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "brick-skylighting"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Jonathan Daugherty 2018";
      maintainer = "cygnus@foobox.com";
      author = "Jonathan Daugherty";
      homepage = "https://github.com/jtdaugherty/brick-skylighting/";
      url = "";
      synopsis = "Show syntax-highlighted text in your Brick UI";
      description = "This package provides a module to use Skylighting to perform\nsyntax highlighting and display the results in Brick-based\ninterfaces.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "brick-skylighting-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."brick-skylighting" or (errorHandler.buildDepError "brick-skylighting"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."skylighting-core" or (errorHandler.buildDepError "skylighting-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if !flags.demos then false else true;
        };
      };
    };
  }