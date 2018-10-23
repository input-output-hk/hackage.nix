{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cabal-db";
        version = "0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/cabal-db";
      url = "";
      synopsis = "query tools for the local cabal database (revdeps, graph, info, search-by)";
      description = "Query tool for the local cabal database\n\n* Diff between package versions\n\n* List reverse dependencies (revdeps)\n\n* Search by author or maintainer\n\n* Generate graphs of dependencies in dot format";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-db" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.Cabal)
            (hsPkgs.tar)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.pretty)
            (hsPkgs.process)
          ];
        };
      };
    };
  }