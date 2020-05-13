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
    flags = { test = false; ghc7 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-core"; version = "0.8.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Creation of type-safe, RESTful web applications.";
      description = "Yesod is a framework designed to foster creation of RESTful web application that have strong compile-time guarantees of correctness. It also affords space efficient code and portability to many deployment backends, from CGI to stand-alone serving.\n\nThe Yesod documentation site <http://www.yesodweb.com/> has much more information, tutorials and information on some of the supporting packages, like Hamlet and Persistent.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."web-routes-quasi" or (errorHandler.buildDepError "web-routes-quasi"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = if flags.test then false else true;
        };
      exes = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (pkgs.lib).optionals (flags.test) [
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."wai-test" or (errorHandler.buildDepError "wai-test"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }