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
      specVersion = "1.10";
      identifier = { name = "Slides"; version = "0.1.0.9"; };
      license = "MIT";
      copyright = "";
      maintainer = "lukahorvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "";
      url = "";
      synopsis = "Generate slides from Haskell code";
      description = "Make presentations in Haskell with diagrams";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
        ];
        buildable = true;
      };
      tests = {
        "sample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."Slides" or (errorHandler.buildDepError "Slides"))
          ];
          buildable = true;
        };
      };
    };
  }