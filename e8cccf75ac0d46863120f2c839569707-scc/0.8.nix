{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scc";
          version = "0.8";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2008-2013 Mario Blazevic";
        maintainer = "blamario@yahoo.com";
        author = "Mario Blazevic";
        homepage = "http://trac.haskell.org/SCC/";
        url = "";
        synopsis = "Streaming component combinators";
        description = "SCC is a layered library of Streaming Component Combinators. The lowest layer in \"Control.Concurent.SCC.Streams\"\ndefines stream abstractions and nested producer-consumer coroutine pairs based on the Coroutine monad transformer.\nOn top of that are streaming component types, a number of primitive streaming components and a set of component\ncombinators. Finally, there is an executable that exposes all the framework functionality in a command-line shell.\n\nThe original library design is based on paper <http://conferences.idealliance.org/extreme/html/2006/Blazevic01/EML2006Blazevic01.html>\n\nMario Bla&#382;evi&#263;, Streaming component combinators, Extreme Markup Languages, 2006.";
        buildType = "Simple";
      };
      components = {
        scc = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.monoid-subclasses
            hsPkgs.incremental-parser
            hsPkgs.monad-parallel
            hsPkgs.monad-coroutine
          ];
        };
        exes = {
          shsh = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.monoid-subclasses
              hsPkgs.incremental-parser
              hsPkgs.monad-parallel
              hsPkgs.monad-coroutine
              hsPkgs.process
              hsPkgs.haskeline
              hsPkgs.parsec
            ];
          };
        };
        tests = {
          Main = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.monoid-subclasses
              hsPkgs.incremental-parser
              hsPkgs.monad-parallel
              hsPkgs.monad-coroutine
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }