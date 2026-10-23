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
      identifier = { name = "ansiform"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "2018-2026 Tunai Raiol";
      maintainer = "Tralen <dev@tralen.cc>";
      author = "Tunai Raiol";
      homepage = "https://github.com/Tralen/ansiform";
      url = "";
      synopsis = "Display formatting for command line interfaces.";
      description = "Basic format DSL for building an ANSI command line interface\nwith colors, alignment, tables, paragraphs and more.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "ansiform-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansiform" or (errorHandler.buildDepError "ansiform"))
          ];
          buildable = true;
        };
        "ansiform-tutorial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansiform" or (errorHandler.buildDepError "ansiform"))
          ];
          buildable = true;
        };
      };
      tests = {
        "ansiform-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansiform" or (errorHandler.buildDepError "ansiform"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }