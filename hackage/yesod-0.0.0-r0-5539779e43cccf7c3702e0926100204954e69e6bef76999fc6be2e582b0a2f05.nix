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
    flags = { buildtests = false; buildsamples = false; nolib = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/code.html";
      url = "";
      synopsis = "A library for creating RESTful web applications.";
      description = "This package stradles the line between framework and simply a controller. It provides minimal support for model and view, mostly focusing on making a controller which adheres strictly to RESTful principles.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."authenticate" or (errorHandler.buildDepError "authenticate"))
          (hsPkgs."predicates" or (errorHandler.buildDepError "predicates"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."web-encodings" or (errorHandler.buildDepError "web-encodings"))
          (hsPkgs."data-object" or (errorHandler.buildDepError "data-object"))
          (hsPkgs."data-object-yaml" or (errorHandler.buildDepError "data-object-yaml"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."control-monad-attempt" or (errorHandler.buildDepError "control-monad-attempt"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."convertible-text" or (errorHandler.buildDepError "convertible-text"))
          (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          (hsPkgs."data-object-json" or (errorHandler.buildDepError "data-object-json"))
          (hsPkgs."attempt" or (errorHandler.buildDepError "attempt"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."safe-failure" or (errorHandler.buildDepError "safe-failure"))
        ];
        buildable = if flags.nolib then false else true;
      };
      exes = {
        "yesod" = {
          depends = [
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          ];
          buildable = true;
        };
        "runtests" = {
          depends = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = if flags.buildtests then true else false;
        };
        "helloworld" = {
          buildable = if flags.buildsamples then true else false;
        };
        "hellotemplate" = {
          buildable = if flags.buildsamples then true else false;
        };
        "fact" = { buildable = if flags.buildsamples then true else false; };
        "i18n" = { buildable = if flags.buildsamples then true else false; };
        "pretty-yaml" = {
          buildable = if flags.buildsamples then true else false;
        };
        "tweedle" = { buildable = if flags.buildsamples then true else false; };
      };
    };
  }