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
    flags = { buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/yesod/";
      url = "";
      synopsis = "Creation of type-safe, RESTful web applications.";
      description = "Yesod is a framework designed to foster creation of RESTful web application that have strong compile-time guarantees of correctness. It also affords space efficient code and portability to many deployment backends, from CGI to stand-alone serving.\n\nThe Yesod documentation site <http://docs.yesodweb.com/> has much more information, tutorials and information on some of the supporting packages, like Hamlet and web-routes-quasi.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."authenticate" or (errorHandler.buildDepError "authenticate"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          (hsPkgs."web-routes-quasi" or (errorHandler.buildDepError "web-routes-quasi"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."control-monad-attempt" or (errorHandler.buildDepError "control-monad-attempt"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }