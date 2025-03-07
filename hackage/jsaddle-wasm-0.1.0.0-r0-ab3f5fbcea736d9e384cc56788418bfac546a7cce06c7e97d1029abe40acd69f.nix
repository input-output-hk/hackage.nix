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
      identifier = { name = "jsaddle-wasm"; version = "0.1.0.0"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "amesgen@amesgen.de";
      author = "amesgen";
      homepage = "https://github.com/amesgen/jsaddle-wasm";
      url = "";
      synopsis = "Run JSaddle JSM with the GHC Wasm backend";
      description = "Run JSaddle @JSM@ with the GHC Wasm backend.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."jsaddle-wasm".components.sublibs.js or (errorHandler.buildDepError "jsaddle-wasm:js"))
        ] ++ pkgs.lib.optionals (system.isWasm32) [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-experimental" or (errorHandler.buildDepError "ghc-experimental"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
      sublibs = {
        "js" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          ];
          buildable = true;
        };
      };
    };
  }