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
      identifier = { name = "hakyll-convert"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Batischev <eual.jp@gmail.com>";
      author = "Eric Kow <eric.kow@gmail.com>, Alexander Batischev <eual.jp@gmail.com>";
      homepage = "https://github.com/Minoru/hakyll-convert#readme";
      url = "";
      synopsis = "Convert from other blog engines to Hakyll.";
      description = "WordPress and Blogger only let one export posts in a limited number of formats, none of which are supported by Hakyll. @hakyll-convert@ is created to bridge this gap, providing a way to turn other platform's datadumps into a set of files Hakyll understands.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
        ];
        buildable = true;
      };
      exes = {
        "hakyll-convert" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hakyll-convert" or (errorHandler.buildDepError "hakyll-convert"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
          buildable = true;
        };
      };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."datetime" or (errorHandler.buildDepError "datetime"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hakyll-convert" or (errorHandler.buildDepError "hakyll-convert"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."datetime" or (errorHandler.buildDepError "datetime"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hakyll-convert" or (errorHandler.buildDepError "hakyll-convert"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
          buildable = true;
        };
      };
    };
  }