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
      specVersion = "1.18";
      identifier = { name = "hs-opentelemetry-otlp"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Ian Duncan, Mercury Technologies";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan, Jade Lovelace";
      homepage = "https://github.com/iand675/hs-opentelemetry#readme";
      url = "";
      synopsis = "OTLP protocol buffer modules for OpenTelemetry, generated via proto-lens";
      description = "proto-lens generated Haskell modules for the OpenTelemetry Protocol (OTLP) protocol buffer definitions. Provides the wire types used by OTLP exporters. Please see the README on GitHub at <https://github.com/iand675/hs-opentelemetry#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
        ];
        buildable = true;
      };
    };
  }