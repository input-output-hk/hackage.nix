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
    flags = { blaze_html_0_5 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-test"; version = "0.2.0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "Nubis <nubis@woobiz.com.ar>, Michael Snoyman";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-test" or (errorHandler.buildDepError "wai-test"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tagstream-conduit" or (errorHandler.buildDepError "tagstream-conduit"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."xml2html" or (errorHandler.buildDepError "xml2html"))
          ] ++ (if flags.blaze_html_0_5
          then [
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            ]
          else [
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            ]);
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod-test" or (errorHandler.buildDepError "yesod-test"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }