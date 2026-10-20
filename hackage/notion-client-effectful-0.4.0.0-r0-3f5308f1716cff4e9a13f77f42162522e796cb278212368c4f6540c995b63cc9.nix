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
      specVersion = "3.4";
      identifier = { name = "notion-client-effectful"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "nadeem@gmail.com";
      author = "Nadeem Bitar";
      homepage = "https://github.com/shinzui/notion-client/tree/master/notion-client-effectful";
      url = "";
      synopsis = "Effectful effects for notion-client";
      description = "Effectful effect and default interpreter for notion-client.\nExposes every operation on 'Notion.V1.Methods' as a smart\nconstructor of the 'Notion.V1.Effectful.Notion' effect and provides\na 'runNotion' interpreter that dispatches through a concrete\n@Methods@ value. API-level 'Notion.V1.Error.NotionError' responses\nare surfaced via the @Error NotionError@ effect; other\n@Servant.Client.ClientError@ values and OAuth lifecycle or persistence\nfailures remain 'IO' exceptions. Accepts fixed-token or refreshing\n@Methods@ without changing effect operations.\nSee @README.md@ for the full import pattern and a worked example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."notion-client" or (errorHandler.buildDepError "notion-client"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "oauth-runtime" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."notion-client" or (errorHandler.buildDepError "notion-client"))
            (hsPkgs."notion-client-effectful" or (errorHandler.buildDepError "notion-client-effectful"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }