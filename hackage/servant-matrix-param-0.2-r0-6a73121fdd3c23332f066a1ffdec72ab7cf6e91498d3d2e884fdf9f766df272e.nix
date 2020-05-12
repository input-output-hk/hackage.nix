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
    flags = { with-servant-aeson-specs = false; with-servant-server = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-matrix-param"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "soenkehahn@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Matrix parameter combinator for servant";
      description = "Matrix parameter combinator for servant";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          ] ++ (pkgs.lib).optional (flags.with-servant-aeson-specs) (hsPkgs."servant-aeson-specs" or (errorHandler.buildDepError "servant-aeson-specs"))) ++ (pkgs.lib).optionals (flags.with-servant-server) [
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-aeson-specs" or (errorHandler.buildDepError "servant-aeson-specs"))
            (hsPkgs."servant-matrix-param" or (errorHandler.buildDepError "servant-matrix-param"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }