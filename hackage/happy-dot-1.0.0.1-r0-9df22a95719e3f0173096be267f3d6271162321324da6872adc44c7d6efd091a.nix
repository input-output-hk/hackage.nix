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
      identifier = { name = "happy-dot"; version = "1.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "marcelogmillani@gmail.com";
      author = "Marcelo Garlet Millani";
      homepage = "";
      url = "";
      synopsis = "Parser for dot made with happy.";
      description = "A parser for the [DOT language](https://www.graphviz.org/doc/info/lang.html).\nThe parser is quite fast as it uses happy.\n\nThis library also includes some convenience functions for\noutputing DOT files and for converting DOT files into\ngraphs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
      tests = {
        "test-ast" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
        "test-pretty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
          buildable = true;
        };
        "test-utils" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-happy-dot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          ];
          buildable = true;
        };
        "bench-language-dot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."language-dot" or (errorHandler.buildDepError "language-dot"))
          ];
          buildable = true;
        };
      };
    };
  }