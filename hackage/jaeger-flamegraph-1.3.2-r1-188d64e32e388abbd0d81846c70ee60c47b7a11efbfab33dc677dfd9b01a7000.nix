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
      identifier = { name = "jaeger-flamegraph"; version = "1.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Symbiont.io";
      maintainer = "Sam Halliday";
      author = "Sam Halliday";
      homepage = "";
      url = "";
      synopsis = "Generate flamegraphs from Jaeger .json dumps.";
      description = "This is a small tool to convert JSON dumps obtained from a Jaeger\nserver (<https://www.jaegertracing.io/>) into a format consumable\nby [FlameGraph](https://github.com/brendangregg/FlameGraph).\n\nFirst download the traces for your SERVICE limiting to LIMIT traces\n\n> \$ curl http://your-jaeger-installation/api/traces?service=SERVICE&limit=LIMIT > input.json\n\nusing the [undocumented Jaeger API](https://github.com/jaegertracing/jaeger/issues/456#issuecomment-412560321)\nthen use @jaeger-flamegraph@ to convert the data and send to @flamegraph.pl@\n\n> \$ jaeger-flamegraph -f input.json | flamegraph.pl > output.svg\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      exes = {
        "jaeger-flamegraph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."jaeger-flamegraph" or (errorHandler.buildDepError "jaeger-flamegraph"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."jaeger-flamegraph" or (errorHandler.buildDepError "jaeger-flamegraph"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }