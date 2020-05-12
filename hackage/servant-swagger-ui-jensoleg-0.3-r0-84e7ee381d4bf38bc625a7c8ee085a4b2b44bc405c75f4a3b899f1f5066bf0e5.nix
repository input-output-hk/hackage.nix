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
      identifier = { name = "servant-swagger-ui-jensoleg"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/haskell-servant/servant-swagger-ui";
      url = "";
      synopsis = "Servant swagger ui: Jens-Ole Graulund theme";
      description = "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)\n\nJsn-Ole Graulund theme https://github.com/jensoleg/swagger-org";
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