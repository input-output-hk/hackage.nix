{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "scc";
          version = "0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2008-2010 Mario Blazevic";
        maintainer = "blamario@yahoo.com";
        author = "Mario Blazevic";
        homepage = "http://trac.haskell.org/SCC/";
        url = "";
        synopsis = "Streaming component combinators";
        description = "SCC is a layered library of Streaming Component Combinators. The lowest layer defines the Coroutine monad transformer.\nThe next few layers add stream abstractions and nested producer-consumer coroutine pairs. On top of that are streaming\ncomponent types, a number of primitive streaming components and a set of component combinators. Finally, there is an\nexecutable that exposes all framework functionality in a command-line shell.\n\nThe original library design is based on paper <http://conferences.idealliance.org/extreme/html/2006/Blazevic01/EML2006Blazevic01.html>\n\nMario Bla&#382;evi&#263;, Streaming component combinators, Extreme Markup Languages, 2006.";
        buildType = "Simple";
      };
      components = {
        scc = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.parallel
          ];
        };
        exes = {
          shsh = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.parallel
              hsPkgs.process
              hsPkgs.readline
              hsPkgs.parsec
            ];
          };
        };
      };
    }