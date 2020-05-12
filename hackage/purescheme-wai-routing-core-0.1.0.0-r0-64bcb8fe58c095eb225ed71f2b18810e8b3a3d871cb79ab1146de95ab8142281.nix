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
    flags = { development = false; };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "purescheme-wai-routing-core";
        version = "0.1.0.0";
        };
      license = "Apache-2.0";
      copyright = "2020 Fernando Rincon Martin";
      maintainer = "f.rincon@protonmail.com";
      author = "Fernando Rincon Martin";
      homepage = "https://github.com/purescheme/purescheme-wai-routing-core#readme";
      url = "";
      synopsis = "Simple Routing functions for Wai Applications";
      description = "Please see the README on GitHub at <https://github.com/purescheme/purescheme-wai-routing-core#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."interpolate" or (errorHandler.buildDepError "interpolate"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ] ++ (pkgs.lib).optional (flags.development) (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"));
        buildable = true;
        };
      exes = {
        "simple-routing-core-exe" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."purescheme-wai-routing-core" or (errorHandler.buildDepError "purescheme-wai-routing-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ] ++ (pkgs.lib).optional (flags.development) (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"));
          buildable = true;
          };
        };
      tests = {
        "simple-routing-core-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."purescheme-wai-routing-core" or (errorHandler.buildDepError "purescheme-wai-routing-core"))
            ] ++ (pkgs.lib).optional (flags.development) (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"));
          buildable = true;
          };
        };
      };
    }