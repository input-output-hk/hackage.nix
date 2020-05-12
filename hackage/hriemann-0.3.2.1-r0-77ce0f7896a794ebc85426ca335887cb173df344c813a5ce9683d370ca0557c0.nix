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
      identifier = { name = "hriemann"; version = "0.3.2.1"; };
      license = "MIT";
      copyright = "2017 David Smith";
      maintainer = "shmish111@gmail.com";
      author = "David Smith";
      homepage = "https://github.com/shmish111/hriemann";
      url = "";
      synopsis = "A Riemann Client for Haskell";
      description = "A Riemann Client for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."protocol-buffers" or (errorHandler.buildDepError "protocol-buffers"))
          (hsPkgs."protocol-buffers-descriptor" or (errorHandler.buildDepError "protocol-buffers-descriptor"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          (hsPkgs."kazura-queue" or (errorHandler.buildDepError "kazura-queue"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
        buildable = true;
        };
      exes = {
        "hriemann-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hriemann" or (errorHandler.buildDepError "hriemann"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hriemann-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hriemann" or (errorHandler.buildDepError "hriemann"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."kazura-queue" or (errorHandler.buildDepError "kazura-queue"))
            ];
          buildable = true;
          };
        };
      };
    }