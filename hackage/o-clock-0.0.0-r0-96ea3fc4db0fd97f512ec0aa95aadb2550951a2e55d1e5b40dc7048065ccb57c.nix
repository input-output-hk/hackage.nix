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
      identifier = { name = "o-clock"; version = "0.0.0"; };
      license = "MIT";
      copyright = "2018 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "@serokell";
      homepage = "https://github.com/serokell/o-clock";
      url = "";
      synopsis = "Type-safe time library.";
      description = "See README.md for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "play-o-clock" = {
          depends = [
            (hsPkgs."o-clock" or (errorHandler.buildDepError "o-clock"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      tests = {
        "o-clock-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."o-clock" or (errorHandler.buildDepError "o-clock"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."type-spec" or (errorHandler.buildDepError "type-spec"))
          ];
          buildable = true;
        };
        "readme-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."o-clock" or (errorHandler.buildDepError "o-clock"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.markdown-unlit.components.exes.markdown-unlit or (pkgs.pkgsBuildBuild.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "o-clock-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."o-clock" or (errorHandler.buildDepError "o-clock"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."tiempo" or (errorHandler.buildDepError "tiempo"))
            (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
          ];
          buildable = true;
        };
      };
    };
  }