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
      identifier = { name = "wikimusic-ssr"; version = "1.0.1.6"; };
      license = "GPL-3.0-only";
      copyright = "2023 Josep Bigorra";
      maintainer = "Josep Bigorra <jjbigorra@gmail.com>";
      author = "Josep Bigorra";
      homepage = "https://codeberg.org/jjba23/wikimusic-ssr";
      url = "";
      synopsis = "";
      description = "Please see the README at <https://codeberg.org/jjba23/wikimusic-ssr>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."keuringsdienst" or (errorHandler.buildDepError "keuringsdienst"))
          (hsPkgs."keys" or (errorHandler.buildDepError "keys"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-blaze" or (errorHandler.buildDepError "servant-blaze"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."servant-auth-server" or (errorHandler.buildDepError "servant-auth-server"))
          (hsPkgs."servant-multipart" or (errorHandler.buildDepError "servant-multipart"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."prometheus-client" or (errorHandler.buildDepError "prometheus-client"))
          (hsPkgs."prometheus-metrics-ghc" or (errorHandler.buildDepError "prometheus-metrics-ghc"))
          (hsPkgs."wai-middleware-prometheus" or (errorHandler.buildDepError "wai-middleware-prometheus"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-logger" or (errorHandler.buildDepError "wai-logger"))
          (hsPkgs."wai-cors" or (errorHandler.buildDepError "wai-cors"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."free-alacarte" or (errorHandler.buildDepError "free-alacarte"))
          (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."wikimusic-model-hs" or (errorHandler.buildDepError "wikimusic-model-hs"))
          (hsPkgs."wikimusic-api-spec" or (errorHandler.buildDepError "wikimusic-api-spec"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "wikimusic-ssr-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."wikimusic-ssr" or (errorHandler.buildDepError "wikimusic-ssr"))
          ];
          buildable = true;
        };
      };
    };
  }