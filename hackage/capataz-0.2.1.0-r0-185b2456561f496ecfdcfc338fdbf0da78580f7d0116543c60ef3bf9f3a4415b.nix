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
      identifier = { name = "capataz"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "© 2018, 2019 Roman Gonzalez and Collaborators";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-capataz#readme";
      url = "";
      synopsis = "OTP-like supervision trees in Haskell";
      description = "`capataz` enhances the reliability of your concurrent applications by offering\nsupervision of green threads that run in your application.\n\nAdvantages over standard library:\n\n* Links related long-living processes together under a common capataz\nsupervisor, with restart/shutdown order\n\n* Set restart strategies (Permanent, Transient, Temporary) on `IO`\nsub-routines on a granular level\n\n* Set restart strategies on a pool of long-living worker threads (AllForOne,\nOneForOne)\n\n* Complete telemetry on the sub-routine lifecycle of your application (start,\nerror, restarts, shutdown)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."teardown" or (errorHandler.buildDepError "teardown"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
        ];
        buildable = true;
      };
      tests = {
        "capataz-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."capataz" or (errorHandler.buildDepError "capataz"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."teardown" or (errorHandler.buildDepError "teardown"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
          buildable = true;
        };
      };
    };
  }