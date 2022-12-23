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
      identifier = { name = "deriving-openapi3"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ilya Kostyuchenko <ilyakooo0@gmail.com>";
      author = "";
      homepage = "https://github.com/ilyakooo0/deriving-openapi3#readme";
      url = "";
      synopsis = "DerivingVia for OpenAPI 3";
      description = "DerivingVia for OpenAPI 3";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deriving-aeson" or (errorHandler.buildDepError "deriving-aeson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."openapi3" or (errorHandler.buildDepError "openapi3"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }