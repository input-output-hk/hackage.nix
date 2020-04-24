{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "opentelemetry-lightstep"; version = "0.0.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "ethercrow@gmail.com";
      author = "Dmitry Ivanov";
      homepage = "";
      url = "";
      synopsis = "";
      description = "The OpenTelemetry Haskell Client (LightStep exporter) https://opentelemetry.io";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."opentelemetry" or ((hsPkgs.pkgs-errors).buildDepError "opentelemetry"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."http2-client" or ((hsPkgs.pkgs-errors).buildDepError "http2-client"))
          (hsPkgs."http2" or ((hsPkgs.pkgs-errors).buildDepError "http2"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."http2-client" or ((hsPkgs.pkgs-errors).buildDepError "http2-client"))
          (hsPkgs."http2-client-grpc" or ((hsPkgs.pkgs-errors).buildDepError "http2-client-grpc"))
          (hsPkgs."http2-grpc-proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "http2-grpc-proto-lens"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
          (hsPkgs."proto-lens-protobuf-types" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens-protobuf-types"))
          (hsPkgs."proto-lens-runtime" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens-runtime"))
          ];
        buildable = true;
        };
      tests = {
        "just-some-usage-code-that-must-compile" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."opentelemetry" or ((hsPkgs.pkgs-errors).buildDepError "opentelemetry"))
            (hsPkgs."opentelemetry-lightstep" or ((hsPkgs.pkgs-errors).buildDepError "opentelemetry-lightstep"))
            ];
          buildable = true;
          };
        };
      };
    }