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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ascii-progress"; version = "0.2.1.2"; };
      license = "MIT";
      copyright = "(c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/haskell-ascii-progress";
      url = "";
      synopsis = "A simple progress bar for the console.";
      description = "A simple Haskell progress bar for the console. Heavily borrows from TJ\nHolowaychuk's Node.JS project\n<https://github.com/tj/node-progress progress>\n\n<https://github.com/yamadapc/haskell-ascii-progress github>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = if flags.examples then true else false;
          };
        "download-example" = {
          depends = [
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = if flags.examples then true else false;
          };
        "multi-example" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }