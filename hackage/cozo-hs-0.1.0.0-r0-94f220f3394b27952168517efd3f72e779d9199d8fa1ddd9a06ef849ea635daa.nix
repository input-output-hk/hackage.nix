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
      specVersion = "3.0";
      identifier = { name = "cozo-hs"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "hencutJohnson@gmail.com";
      author = "Henry Johnson";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to the CozoDB C API";
      description = "Simple, relatively low-level bindings to the C API\nprovided by cozo. Additionally, there are some convenience types for\nserializing function arguments and deserializing query results.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libcozo_c" or (errorHandler.pkgConfDepError "libcozo_c"))
        ];
        buildable = true;
      };
      tests = {
        "cozo-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cozo-hs" or (errorHandler.buildDepError "cozo-hs"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }