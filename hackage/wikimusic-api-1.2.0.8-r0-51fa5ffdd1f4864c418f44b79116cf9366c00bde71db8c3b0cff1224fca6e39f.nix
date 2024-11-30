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
      identifier = { name = "wikimusic-api"; version = "1.2.0.8"; };
      license = "GPL-3.0-only";
      copyright = "2023 Josep Bigorra";
      maintainer = "Josep Bigorra <jjbigorra@gmail.com>";
      author = "Josep Bigorra";
      homepage = "https://codeberg.org/jjba23/wikimusic-api";
      url = "";
      synopsis = "";
      description = "Please see the README at <https://codeberg.org/jjba23/wikimusic-api>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."contravariant-extras" or (errorHandler.buildDepError "contravariant-extras"))
          (hsPkgs."keuringsdienst" or (errorHandler.buildDepError "keuringsdienst"))
          (hsPkgs."keys" or (errorHandler.buildDepError "keys"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."openapi3" or (errorHandler.buildDepError "openapi3"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."password" or (errorHandler.buildDepError "password"))
          (hsPkgs."password-types" or (errorHandler.buildDepError "password-types"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-openapi3" or (errorHandler.buildDepError "servant-openapi3"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-cors" or (errorHandler.buildDepError "wai-cors"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."wai-logger" or (errorHandler.buildDepError "wai-logger"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."prometheus-client" or (errorHandler.buildDepError "prometheus-client"))
          (hsPkgs."prometheus-metrics-ghc" or (errorHandler.buildDepError "prometheus-metrics-ghc"))
          (hsPkgs."wai-middleware-prometheus" or (errorHandler.buildDepError "wai-middleware-prometheus"))
          (hsPkgs."smtp-mail" or (errorHandler.buildDepError "smtp-mail"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."free-alacarte" or (errorHandler.buildDepError "free-alacarte"))
          (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
          (hsPkgs."wikimusic-model-hs" or (errorHandler.buildDepError "wikimusic-model-hs"))
          (hsPkgs."wikimusic-api-spec" or (errorHandler.buildDepError "wikimusic-api-spec"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
          (hsPkgs."beam-sqlite" or (errorHandler.buildDepError "beam-sqlite"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."yggdrasil-schema" or (errorHandler.buildDepError "yggdrasil-schema"))
        ];
        buildable = true;
      };
      exes = {
        "wikimusic-api-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wikimusic-api" or (errorHandler.buildDepError "wikimusic-api"))
          ];
          buildable = true;
        };
      };
      tests = {
        "wikimusic-api-spec" = {
          depends = [
            (hsPkgs."wikimusic-api" or (errorHandler.buildDepError "wikimusic-api"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-logger" or (errorHandler.buildDepError "wai-logger"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
            (hsPkgs."beam-sqlite" or (errorHandler.buildDepError "beam-sqlite"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."password" or (errorHandler.buildDepError "password"))
            (hsPkgs."password-types" or (errorHandler.buildDepError "password-types"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."keuringsdienst" or (errorHandler.buildDepError "keuringsdienst"))
            (hsPkgs."wikimusic-model-hs" or (errorHandler.buildDepError "wikimusic-model-hs"))
            (hsPkgs."wikimusic-api-spec" or (errorHandler.buildDepError "wikimusic-api-spec"))
            (hsPkgs."yggdrasil-schema" or (errorHandler.buildDepError "yggdrasil-schema"))
          ];
          buildable = true;
        };
      };
    };
  }