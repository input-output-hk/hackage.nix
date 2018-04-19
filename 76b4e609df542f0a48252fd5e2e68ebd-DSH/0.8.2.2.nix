{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "DSH";
          version = "0.8.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "giorgidze@gmail.com, jeroen.weijers@uni-tuebingen.de";
        author = "George Giorgidze, Alexander Ulrich, Tom Schreiber, Nils Schweinsberg and Jeroen Weijers";
        homepage = "";
        url = "";
        synopsis = "Database Supported Haskell";
        description = "This is a Haskell library for database-supported program execution. Using\nthis library a relational database management system (RDBMS) can be used as\na coprocessor for the Haskell programming language, especially for those\nprogram fragments that carry out data-intensive and data-parallel\ncomputations.\n\nDatabase executable program fragments can be written using the monad\ncomprehension notation [2] and list processing combinators from the Haskell\nlist prelude. Note that rather than embedding a relational language into\nHaskell, we turn idiomatic Haskell programs into SQL queries.\n\nDSH faithfully represents list order and nesting, and compiles the list\nprocessing combinators into relational queries. The implementation avoids\nunnecessary data transfer and context switching between the database\ncoprocessor and the Haskell runtime by ensuring that the number of generated\nrelational queries is only determined by the program fragment's type and not\nby the database size.\n\nDSH can be used to allow existing Haskell programs to operate on large scale\ndata (e.g., larger than the available heap) or query existing database\nresident data with Haskell.\n\nNote that this package is flagged experimental and therefore is not suited\nfor production use. This is a proof of concept implementation only. To learn\nmore about DSH, our paper entitled as \"Haskell Boards the Ferry: Database-\nSupported Program Execution for Haskell\" [1] is a recommended reading. The\npackage includes a couple of examples that demonstrate how to use DSH.\n\nThe latest release implements new features described in our work-in-\nprogress paper entitled as \"Algebraic Data Types for Language-Integrated\nQueries\" [3].\n\n1. <http://db.inf.uni-tuebingen.de/files/giorgidze/ifl2010.pdf>\n\n2. <http://db.inf.uni-tuebingen.de/files/giorgidze/haskell2011.pdf>\n\n3. <http://db.inf.uni-tuebingen.de/files/giorgidze/adtq.pdf>";
        buildType = "Simple";
      };
      components = {
        DSH = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.HDBC
            hsPkgs.HaXml
            hsPkgs.csv
            hsPkgs.Pathfinder
            hsPkgs.FerryCore
          ];
        };
      };
    }