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
      identifier = { name = "multi-cabal"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "aka.bash0r@gmail.com";
      author = "Nils 'bash0r' Jonsson";
      homepage = "https://github.com/aka-bash0r/multi-cabal";
      url = "";
      synopsis = "A tool supporting multi cabal project builds.";
      description = "A tool supporting multi cabal project builds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "multi-cabal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."AAI" or (errorHandler.buildDepError "AAI"))
            (hsPkgs."multi-cabal" or (errorHandler.buildDepError "multi-cabal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "multi-cabal-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."multi-cabal" or (errorHandler.buildDepError "multi-cabal"))
            ];
          buildable = true;
          };
        };
      };
    }