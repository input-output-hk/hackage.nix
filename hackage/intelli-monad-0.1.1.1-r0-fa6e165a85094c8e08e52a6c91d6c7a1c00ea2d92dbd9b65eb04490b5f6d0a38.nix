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
      specVersion = "3.0";
      identifier = { name = "intelli-monad"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "https://github.com/junjihashimoto/intelli-monad";
      url = "";
      synopsis = "Type level prompt with LLMs via louter.";
      description = "Type level prompt with LLMs via louter. This allows us to define function calls and value validation using types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."aeson-casing" or (errorHandler.buildDepError "aeson-casing"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."louter" or (errorHandler.buildDepError "louter"))
          (hsPkgs."openai-servant-gen" or (errorHandler.buildDepError "openai-servant-gen"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
          (hsPkgs."sixel" or (errorHandler.buildDepError "sixel"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
        ];
        buildable = true;
      };
      exes = {
        "intelli-monad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."intelli-monad" or (errorHandler.buildDepError "intelli-monad"))
            (hsPkgs."louter" or (errorHandler.buildDepError "louter"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
          ];
          buildable = true;
        };
        "calc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."intelli-monad" or (errorHandler.buildDepError "intelli-monad"))
            (hsPkgs."louter" or (errorHandler.buildDepError "louter"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = true;
        };
        "auto-talk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."intelli-monad" or (errorHandler.buildDepError "intelli-monad"))
            (hsPkgs."louter" or (errorHandler.buildDepError "louter"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "intelli-monad-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."intelli-monad" or (errorHandler.buildDepError "intelli-monad"))
          ];
          buildable = true;
        };
      };
    };
  }