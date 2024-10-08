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
    flags = { examples = false; write-hie = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "literatex"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2021-2023 Travis Cardwell";
      maintainer = "Travis Cardwell <travis.cardwell@extrema.is>";
      author = "Travis Cardwell <travis.cardwell@extrema.is>";
      homepage = "https://github.com/ExtremaIS/literatex-haskell#readme";
      url = "";
      synopsis = "transform literate source code to Markdown";
      description = "This package provides a library as well as a command-line utility that\ntransforms literate source code to Markdown.  Please see the README on\nGitHub at <https://github.com/ExtremaIS/literatex-haskell#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ttc" or (errorHandler.buildDepError "ttc"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      exes = {
        "literatex" = {
          depends = [
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."literatex" or (errorHandler.buildDepError "literatex"))
            (hsPkgs."ttc" or (errorHandler.buildDepError "ttc"))
          ];
          buildable = true;
        };
        "example-highlevel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."literatex" or (errorHandler.buildDepError "literatex"))
          ];
          buildable = if flags.examples then true else false;
        };
        "example-lowlevel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."literatex" or (errorHandler.buildDepError "literatex"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
      tests = {
        "literatex-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."literatex" or (errorHandler.buildDepError "literatex"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ttc" or (errorHandler.buildDepError "ttc"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          buildable = true;
        };
      };
    };
  }