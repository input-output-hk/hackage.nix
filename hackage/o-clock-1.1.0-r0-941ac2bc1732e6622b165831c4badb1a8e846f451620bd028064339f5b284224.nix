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
    flags = {
      aeson = false;
      hashable = false;
      deepseq = false;
      serialise = false;
      bench-buildable = false;
      };
    package = {
      specVersion = "2.0";
      identifier = { name = "o-clock"; version = "1.1.0"; };
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
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ] ++ (pkgs.lib).optionals (flags.aeson) [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ]) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"));
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
        "o-clock-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest.components.exes.doctest or (pkgs.buildPackages.doctest or (errorHandler.buildToolDepError "doctest:doctest")))
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
            (hsPkgs.buildPackages.markdown-unlit.components.exes.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "o-clock-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."o-clock" or (errorHandler.buildDepError "o-clock"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."tiempo" or (errorHandler.buildDepError "tiempo"))
            (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
            ] ++ (pkgs.lib).optional (!flags.deepseq) (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"));
          buildable = if !flags.bench-buildable then false else true;
          };
        };
      };
    }