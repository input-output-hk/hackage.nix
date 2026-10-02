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
      identifier = { name = "otel-effectful"; version = "1.0.0"; };
      license = "EUPL-1.2";
      copyright = "";
      maintainer = "IDA";
      author = "IDA";
      homepage = "https://digital-autonomy.institute";
      url = "";
      synopsis = "OpenTelemetry implementation for the Effectful ecosystem";
      description = "Implementation of @<https://opentelemetry.io/ OpenTelemetry>@ for the @<https://hackage.haskell.org/package/effectful effectful>@ ecosystem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."http-client-effectful" or (errorHandler.buildDepError "http-client-effectful"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http2-client-effectful" or (errorHandler.buildDepError "http2-client-effectful"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."retry-effectful" or (errorHandler.buildDepError "retry-effectful"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http2-client-grpc-effectful" or (errorHandler.buildDepError "http2-client-grpc-effectful"))
          (hsPkgs."http2-grpc-proto3-wire" or (errorHandler.buildDepError "http2-grpc-proto3-wire"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."proto3-wire" or (errorHandler.buildDepError "proto3-wire"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."http-client-effectful" or (errorHandler.buildDepError "http-client-effectful"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http2-client-effectful" or (errorHandler.buildDepError "http2-client-effectful"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."retry-effectful" or (errorHandler.buildDepError "retry-effectful"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."composition-extra" or (errorHandler.buildDepError "composition-extra"))
            (hsPkgs."hspec-effectful" or (errorHandler.buildDepError "hspec-effectful"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."hunit-effectful" or (errorHandler.buildDepError "hunit-effectful"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."otel-effectful" or (errorHandler.buildDepError "otel-effectful"))
            (hsPkgs."quickcheck-effectful" or (errorHandler.buildDepError "quickcheck-effectful"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-effectful-discover.components.exes.hspec-effectful-discover or (pkgs.pkgsBuildBuild.hspec-effectful-discover or (errorHandler.buildToolDepError "hspec-effectful-discover:hspec-effectful-discover")))
          ];
          buildable = true;
        };
      };
    };
  }