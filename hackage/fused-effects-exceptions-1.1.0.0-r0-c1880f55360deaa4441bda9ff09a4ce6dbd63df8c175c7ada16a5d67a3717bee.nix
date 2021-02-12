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
      specVersion = "2.4";
      identifier = { name = "fused-effects-exceptions"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Josh Vera, Patrick Thomson, and Rob Rix";
      maintainer = "patrickt@github.com";
      author = "Josh Vera, Patrick Thomson, and Rob Rix";
      homepage = "https://github.com/fused-effects/fused-effects-exceptions#readme";
      url = "";
      synopsis = "Handle exceptions thrown in IO with fused-effects.";
      description = "Provides Resource and Catch effects capable of reacting to and catching GHC's dynamic exceptions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fused-effects-exceptions" or (errorHandler.buildDepError "fused-effects-exceptions"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        "docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."fused-effects-exceptions" or (errorHandler.buildDepError "fused-effects-exceptions"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit.components.exes.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
            ];
          buildable = true;
          };
        };
      };
    }