{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dph-prim-seq = true;
      vector = true;
      uvector = true;
      storablevector = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "NoSlow";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Roman Leshchinskiy 2009-10";
        maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
        author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
        homepage = "http://code.haskell.org/NoSlow";
        url = "";
        synopsis = "Microbenchmarks for various array libraries";
        description = "\nNoSlow is a benchmark suite for several Haskell array libraries:\nstandard lists, primitive sequential arrays from the DPH project,\nuvector, vector (primitive, storable and boxed arrays) and\nstorablevector. At the moment, it implements a bunch of fairly random\nloop micro-kernels and a couple of small array algorithms. It will\ninclude many more benchmarks in the future.\n\nIn its present state, NoSlow /cannot/ be used to reliably compare the\nperformance of the benchmarked libraries. It can be quite helpful for\nidentifying cases where a closer inspection of the generated code\nmight be warranted, however.\n\nThe package builds two binaries: @noslow@ and @noslow-table@.\n\n[@noslow -o log@] runs the benchmarks and writes the results to 'log'\n\n[@noslow-table log -o table.html --html@] outputs the results from\n@log@ as a HTML table.\n\n[@noslow-table log -o table.html --raw --csv@] outputs the results\nfrom @log@ as a CSV file suitable for importing into spreadsheets.\n\n[@noslow-table --diff log1 log2@ -o table.html@] produces a table\ncomparing the results from 'log1' and 'log2' (2 means the first run was\n2x slower than the second; 0.5 means 2x faster).\n\n[@noslow-table --help@] lists additional options.\n\nNoSlow is described in more detail here:\n<http://unlines.wordpress.com/2009/11/27/noslow/>.\n\nChanges since version 0.1\n\n* Renamed and reorganised loop kernels\n\n* Several small array algorithms organised in the new\nbenchmark category @mini@\n\n* More reliable benchmark execution\n\n* Support for producing CSV files\n";
        buildType = "Simple";
      };
      components = {
        exes = {
          noslow = {
            depends  = ((([
              hsPkgs.base
              hsPkgs.array
              hsPkgs.template-haskell
              hsPkgs.criterion
            ] ++ pkgs.lib.optionals _flags.dph-prim-seq [
              hsPkgs.dph-prim-seq
              hsPkgs.dph-base
            ]) ++ pkgs.lib.optional _flags.vector hsPkgs.vector) ++ pkgs.lib.optional _flags.uvector hsPkgs.uvector) ++ pkgs.lib.optional _flags.storablevector hsPkgs.storablevector;
          };
          noslow-table = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.statistics
            ];
          };
        };
      };
    }