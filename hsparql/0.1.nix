{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hsparql";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeff@jeffwheeler.name";
        author = "Jeff Wheeler";
        homepage = "";
        url = "";
        synopsis = "A SPARQL query generator and DSL, and a client to query a SPARQL server.";
        description = "hsparql includes a DSL to easily create queries, as well as methods to\nsubmit those queries to a SPARQL server, returning the results as simple\nHaskell data structures.";
        buildType = "Simple";
      };
      components = {
        hsparql = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.monads-fd
            hsPkgs.xml
          ];
        };
      };
    }