{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cloben";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Sebastian Graf";
        maintainer = "sgraf1337@gmail.com";
        author = "Sebastian Graf";
        homepage = "http://github.com/sgraf812/cloben#readme";
        url = "";
        synopsis = "Clone and benchmark Haskell cabal projects";
        description = "@cloben@ is a Haskell shell script transforms @cabal bench@/@stack bench@\nresults into a CSV file readable by @gipeda@ for visualization.\nPrior to that, it optionally clones a specific commit of a given\ngit repository into a temporary folder in which it then performs the benchmarking.\n\nExample run of some default @fib@ benchmarks:\n\n@\n\$ cloben https:\\/\\/github.com\\/sgraf812\\/benchmark-test 9982583\nbuild\\/warnings;1.0\nbenchmarks\\/fib\\/10;487.7\nbenchmarks\\/fib\\/35;81910000.0\nbenchmarks\\/fib\\/37;215200000.0\n@";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cloben" = {
            depends  = [
              hsPkgs.base
              hsPkgs.turtle
              hsPkgs.foldl
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.temporary
              hsPkgs.process
            ];
          };
        };
      };
    }