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
      specVersion = "1.8";
      identifier = { name = "hakyll-convert"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Batischev <eual.jp@gmail.com>";
      author = "Eric Kow <eric.kow@gmail.com>, Alexander Batischev <eual.jp@gmail.com>";
      homepage = "http://github.com/Minoru/hakyll-convert";
      url = "";
      synopsis = "Convert from other blog engines to Hakyll.";
      description = "WordPress and Blogger only let one export posts in\na limited number of formats, none of which are supported\nby Hakyll. @hakyll-convert@ is created to bridge this gap,\nproviding a way to turn other platform's datadumps into\na set of files Hakyll understands.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      exes = {
        "hakyll-convert" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hakyll-convert" or (errorHandler.buildDepError "hakyll-convert"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            ];
          buildable = true;
          };
        };
      };
    }