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
      identifier = { name = "electrs-client"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Yolo <hello@coingaming.io>";
      maintainer = "21it <21it@tuta.io>, Mikhail Prushinskiy <mprushinsky@gmail.com>, Artem Markov <drownbes@gmail.com>";
      author = "21it <21it@tuta.io>, Mikhail Prushinskiy <mprushinsky@gmail.com>, Artem Markov <drownbes@gmail.com>";
      homepage = "https://github.com/coingaming/src";
      url = "";
      synopsis = "Electrs client library for Haskell";
      description = "You can find documentation at <https://hackage.haskell.org/package/electrs-client>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
          (hsPkgs."generic-pretty-instances" or (errorHandler.buildDepError "generic-pretty-instances"))
          (hsPkgs."hex-text" or (errorHandler.buildDepError "hex-text"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-bitcoin" or (errorHandler.buildDepError "network-bitcoin"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
        buildable = true;
        };
      tests = {
        "electrs-client-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."electrs-client" or (errorHandler.buildDepError "electrs-client"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."network-bitcoin" or (errorHandler.buildDepError "network-bitcoin"))
            ];
          buildable = true;
          };
        };
      };
    }