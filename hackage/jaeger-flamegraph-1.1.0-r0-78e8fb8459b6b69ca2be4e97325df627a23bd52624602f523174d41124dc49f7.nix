{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "jaeger-flamegraph"; version = "1.1.0"; };
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
      sublibs = {
        "jaeger-flamegraph-lib" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      exes = {
        "jaeger-flamegraph" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."jaeger-flamegraph-lib" or ((hsPkgs.pkgs-errors).buildDepError "jaeger-flamegraph-lib"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."jaeger-flamegraph-lib" or ((hsPkgs.pkgs-errors).buildDepError "jaeger-flamegraph-lib"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover or ((hsPkgs.pkgs-errors).buildToolDepError "tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }