{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debugcomp = false;
      debuggraph = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "DSH";
          version = "0.10.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "alex@etc-network.de";
        author = "George Giorgidze, Alexander Ulrich, Nils Schweinsberg and Jeroen Weijers";
        homepage = "";
        url = "";
        synopsis = "Database Supported Haskell";
        description = "This is a Haskell library for database-supported program execution. Using\nthis library a relational database management system (RDBMS) can be used as\na coprocessor for the Haskell programming language, especially for those\nprogram fragments that carry out data-intensive and data-parallel\ncomputations.\n\nDatabase executable program fragments can be written using the monad\ncomprehension notation [2] and list processing combinators from the Haskell\nlist prelude. Note that rather than embedding a relational language into\nHaskell, we turn idiomatic Haskell programs into SQL queries.\n\nDSH faithfully represents list order and nesting, and compiles the list\nprocessing combinators into relational queries. The implementation avoids\nunnecessary data transfer and context switching between the database\ncoprocessor and the Haskell runtime by ensuring that the number of generated\nrelational queries is only determined by the program fragment's type and not\nby the database size.\n\nDSH can be used to allow existing Haskell programs to operate on large scale\ndata (e.g., larger than the available heap) or query existing database\nresident data with Haskell.\n\nNote that this package is flagged experimental and therefore is not suited\nfor production use (we mean it!). This is a proof of concept implementation\nonly. To learn more about DSH, our paper entitled as \"Haskell Boards the Ferry:\nDatabase-Supported Program Execution for Haskell\" [1] is a recommended reading.\nThe package includes a couple of examples that demonstrate how to use DSH.\n\nIn contrast to the DSH version described in [1], the current release does\nnot rely anymore on the loop-lifting compilation technique together with\nthe Pathfinder optimizer. Instead, it brings a completely rewritten query\ncompiler based on Guy Blelloch's flattening transformation. This approach\nleads to a more robust compilation and produces more efficient query code.\n\nPlease read the release notes in 'README.md'.\n\n1. <http://db.inf.uni-tuebingen.de/staticfiles/publications/ferryhaskell.pdf>\n\n2. <http://db.inf.uni-tuebingen.de/staticfiles/publications/haskell2011.pdf>";
        buildType = "Simple";
      };
      components = {
        DSH = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.HDBC
            hsPkgs.HDBC-postgresql
            hsPkgs.pretty
            hsPkgs.aeson
            hsPkgs.kure
            hsPkgs.either
            hsPkgs.semigroups
            hsPkgs.ansi-wl-pprint
            hsPkgs.set-monad
            hsPkgs.dlist
            hsPkgs.algebra-dag
            hsPkgs.algebra-sql
          ];
        };
        exes = {
          vldot = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.aeson
              hsPkgs.containers
              hsPkgs.template-haskell
              hsPkgs.bytestring
              hsPkgs.ansi-wl-pprint
              hsPkgs.semigroups
              hsPkgs.algebra-dag
              hsPkgs.algebra-sql
            ];
          };
        };
        tests = {
          Flattening_TA = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.HDBC-postgresql
              hsPkgs.HDBC
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework
              hsPkgs.HUnit
              hsPkgs.DSH
            ];
          };
        };
      };
    }