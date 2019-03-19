{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "cached"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Guillaume Chérel";
      maintainer = "guillaume.cherel@iscpif.fr";
      author = "Guillaume Chérel";
      homepage = "https://github.com/guillaumecherel/cached#readme";
      url = "";
      synopsis = "Cache values to disk.";
      description = "The module `Data.Cached` lets you cache values to disk to avoid re-running\n(potentially long) computations between consecutive executions of your\nprogram. Cached values are recomputed only when needed, i.e. when other\ncached values on which they depend change. Independent computations are\nrun in parallel. It offers convenient fonctions for caching to text files,\nbut caching and uncaching using arbitrary IO actions is also possible.\n\nThe module was motivated by writing scientific data flows, simulation\nexperiments or data science scripts. Those often involve long\ncomputations and create \"flows\" where the output of some computation\nare the inputs of others, until final results are produced (values,\nfigures, statistical tests, etc.).\n\nSee the module \"Data.Cached\" documentation:";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.protolude)
          (hsPkgs.shake)
          (hsPkgs.text)
          ];
        };
      tests = {
        "cached-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cached)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.protolude)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-assertions)
            (hsPkgs.shake)
            (hsPkgs.text)
            ];
          };
        };
      };
    }