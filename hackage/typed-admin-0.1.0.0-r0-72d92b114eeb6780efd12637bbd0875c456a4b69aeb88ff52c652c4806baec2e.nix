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
    flags = { example = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "typed-admin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Daishi Nakajima";
      maintainer = "nakaji.dayo@gmail.com";
      author = "Daishi Nakajima";
      homepage = "https://github.com/nakaji-dayo/typed-admin#readme";
      url = "";
      synopsis = "Admin console framework";
      description = "Please see the README on GitHub at <https://github.com/nakaji-dayo/typed-admin#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
          (hsPkgs."HDBC-session" or (errorHandler.buildDepError "HDBC-session"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."heterocephalus" or (errorHandler.buildDepError "heterocephalus"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."persistable-record" or (errorHandler.buildDepError "persistable-record"))
          (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
          (hsPkgs."relational-query-HDBC" or (errorHandler.buildDepError "relational-query-HDBC"))
          (hsPkgs."relational-record" or (errorHandler.buildDepError "relational-record"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "typed-admin-exe" = {
          depends = [
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC-session" or (errorHandler.buildDepError "HDBC-session"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."heterocephalus" or (errorHandler.buildDepError "heterocephalus"))
            (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."persistable-record" or (errorHandler.buildDepError "persistable-record"))
            (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
            (hsPkgs."relational-query-HDBC" or (errorHandler.buildDepError "relational-query-HDBC"))
            (hsPkgs."relational-record" or (errorHandler.buildDepError "relational-record"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
            (hsPkgs."typed-admin" or (errorHandler.buildDepError "typed-admin"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = if !flags.example then false else true;
          };
        };
      };
    }