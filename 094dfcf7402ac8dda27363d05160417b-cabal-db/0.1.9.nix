{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cabal-db";
          version = "0.1.9";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/cabal-db";
        url = "";
        synopsis = "query tools for the local cabal database (revdeps, graph, info, search-by, license, bounds)";
        description = "Query tool for the local cabal database\n\n* Diff between package versions\n\n* List reverse dependencies (revdeps)\n\n* Search by author or maintainer\n\n* Generate graphs of dependencies in dot format\n\n* List licenses of package and their dependencies\n\n* List all the upper version bounds that could be bumped for a list of packages";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cabal-db" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.Cabal
              hsPkgs.tar
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.optparse-applicative
              hsPkgs.ansi-wl-pprint
            ];
          };
        };
      };
    }