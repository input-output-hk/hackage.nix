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
      identifier = { name = "Shpadoinkle-examples"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fresheyeball@protonmail.com";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "Example usages of Shpadoinkle";
      description = "A collection of illustrative applications to show various Shpadoinkle utilities.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "counter" = {
          depends = [
            (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
            (hsPkgs."Shpadoinkle-backend-pardiff" or (errorHandler.buildDepError "Shpadoinkle-backend-pardiff"))
            (hsPkgs."Shpadoinkle-html" or (errorHandler.buildDepError "Shpadoinkle-html"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "servant-crud-client" = {
          depends = [
            (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
            (hsPkgs."Shpadoinkle-backend-pardiff" or (errorHandler.buildDepError "Shpadoinkle-backend-pardiff"))
            (hsPkgs."Shpadoinkle-html" or (errorHandler.buildDepError "Shpadoinkle-html"))
            (hsPkgs."Shpadoinkle-lens" or (errorHandler.buildDepError "Shpadoinkle-lens"))
            (hsPkgs."Shpadoinkle-router" or (errorHandler.buildDepError "Shpadoinkle-router"))
            (hsPkgs."Shpadoinkle-widgets" or (errorHandler.buildDepError "Shpadoinkle-widgets"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            ] ++ (if compiler.isGhcjs && true
            then [
              (hsPkgs."servant-client-ghcjs" or (errorHandler.buildDepError "servant-client-ghcjs"))
              ]
            else [
              (hsPkgs."beam-sqlite" or (errorHandler.buildDepError "beam-sqlite"))
              (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
              (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
              ]);
          buildable = true;
          };
        "servant-crud-server" = {
          depends = [
            (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
            (hsPkgs."Shpadoinkle-backend-static" or (errorHandler.buildDepError "Shpadoinkle-backend-static"))
            (hsPkgs."Shpadoinkle-html" or (errorHandler.buildDepError "Shpadoinkle-html"))
            (hsPkgs."Shpadoinkle-lens" or (errorHandler.buildDepError "Shpadoinkle-lens"))
            (hsPkgs."Shpadoinkle-router" or (errorHandler.buildDepError "Shpadoinkle-router"))
            (hsPkgs."Shpadoinkle-widgets" or (errorHandler.buildDepError "Shpadoinkle-widgets"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
            (hsPkgs."beam-sqlite" or (errorHandler.buildDepError "beam-sqlite"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        "todomvc" = {
          depends = [
            (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
            (hsPkgs."Shpadoinkle-backend-pardiff" or (errorHandler.buildDepError "Shpadoinkle-backend-pardiff"))
            (hsPkgs."Shpadoinkle-html" or (errorHandler.buildDepError "Shpadoinkle-html"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "todomvcatomic" = {
          depends = [
            (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
            (hsPkgs."Shpadoinkle-backend-snabbdom" or (errorHandler.buildDepError "Shpadoinkle-backend-snabbdom"))
            (hsPkgs."Shpadoinkle-html" or (errorHandler.buildDepError "Shpadoinkle-html"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "widgets" = {
          depends = [
            (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
            (hsPkgs."Shpadoinkle-backend-pardiff" or (errorHandler.buildDepError "Shpadoinkle-backend-pardiff"))
            (hsPkgs."Shpadoinkle-html" or (errorHandler.buildDepError "Shpadoinkle-html"))
            (hsPkgs."Shpadoinkle-widgets" or (errorHandler.buildDepError "Shpadoinkle-widgets"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }