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
      specVersion = "1.8";
      identifier = { name = "nix-delegate"; version = "1.0.0"; };
      license = "Apache-2.0";
      copyright = "2017 Awake Networks";
      maintainer = "opensource@awakenetworks.com";
      author = "Awake Networks";
      homepage = "";
      url = "";
      synopsis = "Convenient utility for distributed Nix builds";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          ];
        buildable = true;
        };
      exes = {
        "nix-delegate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nix-delegate" or (errorHandler.buildDepError "nix-delegate"))
            ];
          buildable = true;
          };
        };
      };
    }