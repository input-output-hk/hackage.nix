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
    flags = { ghc7 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-test"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nubis <nubis@woobiz.com.ar>";
      author = "Nubis <nubis@woobiz.com.ar>";
      homepage = "http://www.yesodweb.com";
      url = "";
      synopsis = "integration testing for WAI/Yesod Applications ";
      description = "Behaviour Oriented integration Testing for Yesod Applications ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-test" or (errorHandler.buildDepError "wai-test"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }