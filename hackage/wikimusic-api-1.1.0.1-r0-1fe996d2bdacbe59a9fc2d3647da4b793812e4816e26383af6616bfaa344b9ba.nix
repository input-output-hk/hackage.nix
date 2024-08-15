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
      identifier = { name = "wikimusic-api"; version = "1.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2023 Josep Bigorra";
      maintainer = "Josep Bigorra <jjbigorra@gmail.com>";
      author = "Josep Bigorra";
      homepage = "https://gitlab.com/jjba-projects/wikimusic-api";
      url = "";
      synopsis = "";
      description = "Please see the README at <https://gitlab.com/jjba-projects/wikimusic-api>";
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
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."hasql-implicits" or (errorHandler.buildDepError "hasql-implicits"))
          (hsPkgs."hasql-migration" or (errorHandler.buildDepError "hasql-migration"))
          (hsPkgs."hasql-optparse-applicative" or (errorHandler.buildDepError "hasql-optparse-applicative"))
          (hsPkgs."hasql-pool" or (errorHandler.buildDepError "hasql-pool"))
          (hsPkgs."hasql-transaction" or (errorHandler.buildDepError "hasql-transaction"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
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
          (hsPkgs."servant-rate-limit" or (errorHandler.buildDepError "servant-rate-limit"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-cors" or (errorHandler.buildDepError "wai-cors"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."wai-rate-limit" or (errorHandler.buildDepError "wai-rate-limit"))
          (hsPkgs."wai-rate-limit-redis" or (errorHandler.buildDepError "wai-rate-limit-redis"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."smtp-mail" or (errorHandler.buildDepError "smtp-mail"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."free-alacarte" or (errorHandler.buildDepError "free-alacarte"))
          (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
          (hsPkgs."wikimusic-model-hs" or (errorHandler.buildDepError "wikimusic-model-hs"))
          (hsPkgs."wikimusic-api-spec" or (errorHandler.buildDepError "wikimusic-api-spec"))
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
        "spec" = {
          depends = [
            (hsPkgs."wikimusic-api" or (errorHandler.buildDepError "wikimusic-api"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }