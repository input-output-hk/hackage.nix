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
      identifier = { name = "notion-client-effectful"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "nadeem@gmail.com";
      author = "Nadeem Bitar";
      homepage = "";
      url = "";
      synopsis = "Effectful effects for notion-client";
      description = "Effectful effect + default interpreter for shinzui/notion-client.\nExposes every operation on 'Notion.V1.Methods' as a smart\nconstructor of the 'Notion.V1.Effectful.Notion' effect and provides\na 'runNotion' interpreter that dispatches through a concrete\n@Methods@ value. API-level 'Notion.V1.Error.NotionError' responses\nare surfaced via the @Error NotionError@ effect; other\n@Servant.Client.ClientError@ values remain 'IO' exceptions.\nSee @README.md@ for the full import pattern and a worked example.";
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
    };
  }