{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      dev = false;
      instrumented = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "unagi-bloomfilter";
        version = "0.1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://github.com/jberryman/unagi-bloomfilter";
      url = "";
      synopsis = "A fast, cache-efficient, concurrent bloom filter";
      description = "This library implements a fast concurrent bloom filter, based on bloom-1 from\n\"Fast Bloom Filters and Their Generalization\" by Y Qiao, et al.\n\nA bloom filter is a probabilistic, constant-space, set-like data structure\nsupporting insertion and membership queries. This implementation is backed by\nSipHash so can safely consume untrusted inputs.\n\nThe implementation here compares favorably with traditional set\nimplementations in a single-threaded context, e.g. here are 10 inserts or\nlookups compared across some sets of different sizes:\n\n<<http://i.imgur.com/gei1LW4.png>>\n\nWith the llvm backend benchmarks take around 75-85% of the runtime of the\nnative code gen.\n\nUnfortunately writes in particular don't seem to scale currently; i.e.\ndistributing writes across multiple threads may be /slower/ than in a\nsingle-threaded context, because of memory effects. We plan to export\nfunctionality that would support using the filter here in a concurrent\ncontext with better memory behavior (e.g. a server that shards to a\nthread-pool which handles only a portion of the bloom array).\n\n<<http://i.imgur.com/RaUSmZB.png>>\n";
      buildType = "Simple";
    };
    components = {
      "unagi-bloomfilter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.atomic-primops)
          (hsPkgs.primitive)
          (hsPkgs.bytestring)
          (hsPkgs.hashabler)
        ];
      };
      exes = {
        "dev-example" = {
          depends  = pkgs.lib.optionals (!(!flags.dev)) [
            (hsPkgs.base)
            (hsPkgs.unagi-bloomfilter)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = pkgs.lib.optionals (flags.dev) [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.unagi-bloomfilter)
            (hsPkgs.primitive)
            (hsPkgs.bytestring)
            (hsPkgs.hashabler)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = pkgs.lib.optionals (flags.dev) [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.unagi-bloomfilter)
            (hsPkgs.unordered-containers)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            (hsPkgs.hashabler)
          ];
        };
      };
    };
  }