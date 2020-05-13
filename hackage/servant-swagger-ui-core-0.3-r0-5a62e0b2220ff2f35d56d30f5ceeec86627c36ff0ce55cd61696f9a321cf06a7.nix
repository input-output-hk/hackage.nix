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
    flags = { servant-0-5 = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "servant-swagger-ui-core"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/servant-swagger-ui";
      url = "";
      synopsis = "Servant swagger ui core components";
      description = "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)\n\nSee servant-swagger-ui, servant-swagger-ui-jensoleg or\nservant-swagger-ui-redoc for \"concrete\" implementations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-blaze" or (errorHandler.buildDepError "servant-blaze"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
          ] ++ (if flags.servant-0-5
          then [
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            ]
          else [
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            ]);
        buildable = true;
        };
      };
    }