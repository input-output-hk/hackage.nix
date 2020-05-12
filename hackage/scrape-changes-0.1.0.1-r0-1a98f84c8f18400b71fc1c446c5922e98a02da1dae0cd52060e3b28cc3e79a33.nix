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
      specVersion = "1.14";
      identifier = { name = "scrape-changes"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "matthias.mh.herrmann@googlemail.com";
      author = "Matthias Herrmann";
      homepage = "";
      url = "";
      synopsis = "Scrape websites for changes";
      description = "This library scrapes websites and invokes callbacks when there are changes, similar to a RSS reader.\nSending an email by invoking sendmail is a built-in callback mechanism. Of course, users can provide\ntheir own callback function in addition.\n\nLook at \"Network.ScrapeChanges\" for a full working example on how to use \"scrape-changes\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."cron" or (errorHandler.buildDepError "cron"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "scrapechanges-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
            (hsPkgs."cron" or (errorHandler.buildDepError "cron"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."scrape-changes" or (errorHandler.buildDepError "scrape-changes"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            ];
          buildable = true;
          };
        };
      };
    }