{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "This is a small tool to convert JSON dumps obtained from a [Jaeger\nserver] (https://www.jaegertracing.io/) into a format consumable\nby [FlameGraph](https://github.com/brendangregg/FlameGraph).\n\nFilter the traces for your SERVICE from the\n[undocumented Jaeger API](https://github.com/jaegertracing/jaeger/issues/456).\n\n> \$ curl http://jaeger/api/traces?service=SERVICE&limit=1000 |\n>   jaeger-flamegraph |\n>   flamegraph.pl > output.svg";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "jaeger-flamegraph-lib" = {
          depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) ];
          };
        };
      exes = {
        "jaeger-flamegraph" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.jaeger-flamegraph-lib)
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
            (hsPkgs.jaeger-flamegraph-lib)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
            ];
          build-tools = [ ((hsPkgs.buildPackages).tasty-discover) ];
          };
        };
      };
    }