{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "hsparql";
          version = "0.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Rob Stewart <robstewart57@gmail.com>";
        author = "Jeff Wheeler, Rob Stewart";
        homepage = "https://github.com/robstewart57/hsparql";
        url = "";
        synopsis = "A SPARQL query generator and DSL, and a client to query a SPARQL server.";
        description = "hsparql includes a DSL to easily create queries, as well as methods to\nsubmit those queries to a SPARQL server, returning the results as simple\nHaskell data structures. Supports SELECT, CONSTRUCT, ASK and UPDATE queries.\nExample queries are included in the tests:\n<https://github.com/robstewart57/hsparql/blob/master/tests/DBPedia.hs>.";
        buildType = "Simple";
      };
      components = {
        hsparql = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.mtl
            hsPkgs.xml
            hsPkgs.rdf4h
            hsPkgs.bytestring
            hsPkgs.MissingH
            hsPkgs.network
            hsPkgs.text
            hsPkgs.network-uri
          ];
        };
        tests = {
          test-hsparql = {
            depends  = [
              hsPkgs.hsparql
              hsPkgs.rdf4h
              hsPkgs.base
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.http-types
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.network-uri
            ];
          };
        };
      };
    }