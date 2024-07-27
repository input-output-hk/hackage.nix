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
      specVersion = "2.2";
      identifier = { name = "jaeger-flamegraph"; version = "1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Symbiont.io";
      maintainer = "Sam Halliday";
      author = "Sam Halliday";
      homepage = "";
      url = "";
      synopsis = "Generate flamegraphs from Jaeger .json dumps.";
      description = "This is a small tool to convert JSON dumps obtained from a [Jaeger\nserver] (https://www.jaegertracing.io/) into a format consumable\nby [FlameGraph](https://github.com/brendangregg/FlameGraph).\n\nFilter the traces for your SERVICE from the\n[undocumented Jaeger API](https://github.com/jaegertracing/jaeger/issues/456).\n\n> $ curl http://jaeger/api/traces?service=SERVICE&limit=1000 |\n>   jaeger-flamegraph |\n>   flamegraph.pl > output.svg";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "jaeger-flamegraph-lib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      exes = {
        "jaeger-flamegraph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jaeger-flamegraph".components.sublibs.jaeger-flamegraph-lib or (errorHandler.buildDepError "jaeger-flamegraph:jaeger-flamegraph-lib"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jaeger-flamegraph".components.sublibs.jaeger-flamegraph-lib or (errorHandler.buildDepError "jaeger-flamegraph:jaeger-flamegraph-lib"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }