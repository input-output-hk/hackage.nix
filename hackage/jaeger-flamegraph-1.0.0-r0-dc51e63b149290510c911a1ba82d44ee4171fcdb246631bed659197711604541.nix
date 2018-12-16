{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = {
        name = "jaeger-flamegraph";
        version = "1.0.0";
      };
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
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
      exes = {
        "jaeger-flamegraph" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.jaeger-flamegraph)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.extra)
            (hsPkgs.aeson)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.jaeger-flamegraph)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
          ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover)
          ];
        };
      };
    };
  }