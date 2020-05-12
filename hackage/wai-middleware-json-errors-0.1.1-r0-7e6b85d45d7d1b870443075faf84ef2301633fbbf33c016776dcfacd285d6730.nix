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
      specVersion = "1.10";
      identifier = { name = "wai-middleware-json-errors"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Orbital Labs";
      maintainer = "seanhess@gmail.com";
      author = "Sean Hess";
      homepage = "https://github.com/orbital/wai-middleware-json-errors#readme";
      url = "";
      synopsis = "Converts errors from plaintext to json";
      description = "Converts errors from plaintext to json";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "wai-middleware-json-errors-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wai-middleware-json-errors" or (errorHandler.buildDepError "wai-middleware-json-errors"))
            ];
          buildable = true;
          };
        };
      };
    }