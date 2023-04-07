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
      specVersion = "1.12";
      identifier = { name = "ReplaceUmlaut"; version = "0.1.5.3"; };
      license = "LicenseRef-GPL";
      copyright = "2021 Andrew U. Frank";
      maintainer = "Andrew U. Frank <andrewufrank@gmail.com>";
      author = "Andrew Frank";
      homepage = "https://github.com/andrewufrank/u4blog.git#readme";
      url = "";
      synopsis = "converting text to properly encoded german umlauts";
      description = "converts the convenient ae, oe and ue replacements for german\numlauts into their proper UTF-8 encoded umlauts -\nrespecting cases where the ae, oe and ue must remain\nbased on a extensible list.\nTreats a file completely.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dir-traverse" or (errorHandler.buildDepError "dir-traverse"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uniform-cmdLineArgs" or (errorHandler.buildDepError "uniform-cmdLineArgs"))
          (hsPkgs."uniform-fileio" or (errorHandler.buildDepError "uniform-fileio"))
          (hsPkgs."uniform-json" or (errorHandler.buildDepError "uniform-json"))
          (hsPkgs."uniform-pandoc" or (errorHandler.buildDepError "uniform-pandoc"))
          (hsPkgs."uniformBase" or (errorHandler.buildDepError "uniformBase"))
          ];
        buildable = true;
        };
      exes = {
        "replaceUmlaut" = {
          depends = [
            (hsPkgs."ReplaceUmlaut" or (errorHandler.buildDepError "ReplaceUmlaut"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dir-traverse" or (errorHandler.buildDepError "dir-traverse"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uniform-cmdLineArgs" or (errorHandler.buildDepError "uniform-cmdLineArgs"))
            (hsPkgs."uniform-fileio" or (errorHandler.buildDepError "uniform-fileio"))
            (hsPkgs."uniform-json" or (errorHandler.buildDepError "uniform-json"))
            (hsPkgs."uniform-pandoc" or (errorHandler.buildDepError "uniform-pandoc"))
            (hsPkgs."uniformBase" or (errorHandler.buildDepError "uniformBase"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test1" = {
          depends = [
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."ReplaceUmlaut" or (errorHandler.buildDepError "ReplaceUmlaut"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dir-traverse" or (errorHandler.buildDepError "dir-traverse"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uniform-cmdLineArgs" or (errorHandler.buildDepError "uniform-cmdLineArgs"))
            (hsPkgs."uniform-fileio" or (errorHandler.buildDepError "uniform-fileio"))
            (hsPkgs."uniform-json" or (errorHandler.buildDepError "uniform-json"))
            (hsPkgs."uniform-pandoc" or (errorHandler.buildDepError "uniform-pandoc"))
            (hsPkgs."uniformBase" or (errorHandler.buildDepError "uniformBase"))
            ];
          buildable = true;
          };
        };
      };
    }