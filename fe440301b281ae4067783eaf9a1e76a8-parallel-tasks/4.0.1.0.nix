{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "parallel-tasks";
          version = "4.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nccb@kent.ac.uk";
        author = "Neil Brown <nccb@kent.ac.uk>";
        homepage = "";
        url = "";
        synopsis = "";
        description = "This library is useful for running a large amount of parallel tasks\nthat run on top of the IO monad, executing them in batches from a work queue.\n\nIt has several features aimed at monitoring the progress of the tasks\nand tries to be reasonably efficient (in space and time) for large\nnumbers (millions) of tasks.  There is also caching support available so that the results of\nrunning the task can be preserved between runs of the same program, which\nis useful for doing scientific analysis.";
        buildType = "Simple";
      };
      components = {
        parallel-tasks = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.deepseq
            hsPkgs.here
            hsPkgs.old-locale
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.vector-algorithms
          ];
        };
      };
    }