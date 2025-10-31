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
      specVersion = "2.0";
      identifier = { name = "nix-cache-server"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2025 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://github.com/juspay/vira/tree/main/packages/nix-cache-server";
      url = "";
      synopsis = "Nix binary cache server using nix-serve-ng";
      description = "WAI application for serving a Nix binary cache using nix-serve-ng";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."nix" or (errorHandler.buildDepError "nix"))
          (hsPkgs."nix-serve-ng" or (errorHandler.buildDepError "nix-serve-ng"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
    };
  }