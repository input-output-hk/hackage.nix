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
      specVersion = "2.4";
      identifier = { name = "webgear-swagger-ui"; version = "1.1.0"; };
      license = "MPL-2.0";
      copyright = "2023 Raghu Kaippully";
      maintainer = "rkaippully@gmail.com";
      author = "Raghu Kaippully";
      homepage = "https://github.com/haskell-webgear/webgear#readme";
      url = "";
      synopsis = "Host swagger UI based on WebGear API specifications.";
      description = "WebGear is a library to for building composable, type-safe HTTP API servers.\nThis package can be used to serve swagger UI based on WebGear API\nspecifications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."webgear-core" or (errorHandler.buildDepError "webgear-core"))
          ];
        buildable = true;
        };
      };
    }