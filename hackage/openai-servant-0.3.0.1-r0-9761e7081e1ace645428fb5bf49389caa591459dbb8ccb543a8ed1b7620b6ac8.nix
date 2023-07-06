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
      identifier = { name = "openai-servant"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021-2023 Alexander Thiemann <mail@thiemann.at>";
      maintainer = "Alexander Thiemann <mail@thiemann.at>";
      author = "Alexander Thiemann <mail@thiemann.at>";
      homepage = "https://github.com/agrafix/openai-hs#readme";
      url = "";
      synopsis = "Unofficial OpenAI servant types";
      description = "Unofficial description of the OpenAI API using servant types";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-auth" or (errorHandler.buildDepError "servant-auth"))
          (hsPkgs."servant-auth-client" or (errorHandler.buildDepError "servant-auth-client"))
          (hsPkgs."servant-multipart-api" or (errorHandler.buildDepError "servant-multipart-api"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }