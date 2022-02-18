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
    flags = { buildfast = true; examples = false; production = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "blockfrost-client"; version = "0.3.1.0"; };
      license = "Apache-2.0";
      copyright = "2021 blockfrost.io";
      maintainer = "srk@48.io";
      author = "blockfrost.io";
      homepage = "https://github.com/blockfrost/blockfrost-haskell";
      url = "";
      synopsis = "blockfrost.io basic client";
      description = "Simple Blockfrost clients for use with transformers or mtl";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blockfrost-api" or (errorHandler.buildDepError "blockfrost-api"))
          (hsPkgs."blockfrost-client-core" or (errorHandler.buildDepError "blockfrost-client-core"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
          ];
        buildable = true;
        };
      exes = {
        "blockfrost-client-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockfrost-client" or (errorHandler.buildDepError "blockfrost-client"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "blockfrost-client-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockfrost-client" or (errorHandler.buildDepError "blockfrost-client"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover.components.exes.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }