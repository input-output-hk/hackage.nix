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
      identifier = { name = "prometheus-wai"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2025 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/prometheus-wai#readme";
      url = "";
      synopsis = "";
      description = "Prometheus metrics for WAI applications";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."prometheus" or (errorHandler.buildDepError "prometheus"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.autoexporter.components.exes.autoexporter or (pkgs.pkgsBuildBuild.autoexporter or (errorHandler.buildToolDepError "autoexporter:autoexporter")))
        ];
        buildable = true;
      };
    };
  }