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
      identifier = {
        name = "servant-swagger-ui-redoc";
        version = "0.3.0.1.21.2";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/servant-swagger-ui";
      url = "";
      synopsis = "Servant swagger ui: ReDoc theme";
      description = "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)\n\nReDoc theme: https://github.com/Rebilly/ReDoc";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."servant-swagger-ui-core" or (errorHandler.buildDepError "servant-swagger-ui-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."file-embed-lzma" or (errorHandler.buildDepError "file-embed-lzma"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }