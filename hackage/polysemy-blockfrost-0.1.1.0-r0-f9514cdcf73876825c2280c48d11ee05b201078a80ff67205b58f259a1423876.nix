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
      specVersion = "3.4";
      identifier = { name = "polysemy-blockfrost"; version = "0.1.1.0"; };
      license = "Apache-2.0";
      copyright = "2024 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "";
      url = "";
      synopsis = "Polysemy wrapper around the Blockfrost client";
      description = "Polysemy wrapper around the Blockfrost client.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."blockfrost-api" or (errorHandler.buildDepError "blockfrost-api"))
          (hsPkgs."blockfrost-client" or (errorHandler.buildDepError "blockfrost-client"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "polysemy-blockfrost-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }