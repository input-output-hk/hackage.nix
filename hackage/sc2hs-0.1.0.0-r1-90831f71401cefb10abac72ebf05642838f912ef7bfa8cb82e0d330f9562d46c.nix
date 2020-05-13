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
      identifier = { name = "sc2hs"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Sophie Taylor <sophie@spacekitteh.moe>";
      author = "Sophie Taylor <sophie@spacekitteh.moe>";
      homepage = "https://gitlab.com/spacekitteh/sc2hs";
      url = "";
      synopsis = "An interface to the Starcraft II bot API";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."etc" or (errorHandler.buildDepError "etc"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
          (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-labels" or (errorHandler.buildDepError "lens-labels"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."sc2-lowlevel" or (errorHandler.buildDepError "sc2-lowlevel"))
          (hsPkgs."sc2-proto" or (errorHandler.buildDepError "sc2-proto"))
          (hsPkgs."sc2-support" or (errorHandler.buildDepError "sc2-support"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "sc2hs-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."etc" or (errorHandler.buildDepError "etc"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-labels" or (errorHandler.buildDepError "lens-labels"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."sc2-lowlevel" or (errorHandler.buildDepError "sc2-lowlevel"))
            (hsPkgs."sc2-proto" or (errorHandler.buildDepError "sc2-proto"))
            (hsPkgs."sc2-support" or (errorHandler.buildDepError "sc2-support"))
            (hsPkgs."sc2hs" or (errorHandler.buildDepError "sc2hs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }