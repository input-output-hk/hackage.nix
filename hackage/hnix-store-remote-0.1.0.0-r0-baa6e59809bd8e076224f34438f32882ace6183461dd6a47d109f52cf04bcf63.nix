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
      identifier = { name = "hnix-store-remote"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2018 Richard Marko";
      maintainer = "srk@48.io";
      author = "Richard Marko";
      homepage = "https://github.com/haskell-nix/hnix-store";
      url = "";
      synopsis = "Remote hnix store";
      description = "Implementation of the nix store using the daemon protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hnix-store-core" or (errorHandler.buildDepError "hnix-store-core"))
          ];
        buildable = true;
        };
      exes = {
        "hnix-store-temporary-live-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hnix-store-core" or (errorHandler.buildDepError "hnix-store-core"))
            (hsPkgs."hnix-store-remote" or (errorHandler.buildDepError "hnix-store-remote"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            ];
          buildable = true;
          };
        };
      };
    }