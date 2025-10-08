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
      identifier = { name = "hs-opentelemetry-otlp"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Ian Duncan, Mercury Technologies";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan, Jade Lovelace";
      homepage = "https://github.com/iand675/hs-opentelemetry#readme";
      url = "";
      synopsis = "OpenTelemetry protocol buffer modules generated for the OTLP protocol by the proto-lens package";
      description = "Please see the README on GitHub at <https://github.com/iand675/hs-opentelemetry#readme>";
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