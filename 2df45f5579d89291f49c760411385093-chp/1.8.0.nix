{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "chp";
          version = "1.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008--2009, University of Kent";
        maintainer = "neil@twistedsquare.com";
        author = "Neil Brown";
        homepage = "http://www.cs.kent.ac.uk/projects/ofa/chp/";
        url = "";
        synopsis = "An implementation of concurrency ideas from Communicating Sequential Processes";
        description = "The Communicating Haskell Processes (CHP) library is an\nimplementation of message-passing concurrency ideas from\nHoare's Communicating Sequential Processes.  More details and\na tutorial can be found at its homepage:\n<http://www.cs.kent.ac.uk/projects/ofa/chp/>, and there is\nalso now a blog with examples of using the library:\n<http://chplib.wordpress.com/>.  The library requires at\nleast GHC 6.8.1.";
        buildType = "Simple";
      };
      components = {
        chp = {
          depends  = [
            hsPkgs.base
            hsPkgs.extensible-exceptions
            hsPkgs.containers
            hsPkgs.HUnit
            hsPkgs.mtl
            hsPkgs.parallel
            hsPkgs.pretty
            hsPkgs.QuickCheck
            hsPkgs.stm
          ];
        };
      };
    }