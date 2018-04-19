{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.5";
        identifier = {
          name = "LslPlus";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Robert Greayer 2008.";
        maintainer = "robgreayer@yahoo.com";
        author = "Robert Greayer";
        homepage = "http:/lslplus.sourceforge.net/";
        url = "";
        synopsis = "An execution and testing framework for the Linden Scripting Language (LSL)";
        description = "Provides a framework for executing Linden Scripting Language scripts offline,\ni.e. outside a Second Life&#xAE; simulator.  The primary product is the LslPlus executable,\nwhich works in cooperation with the LSL Plus Eclipse plugin (the executable is not\nmuch use standalone).  It also provides a library, which includes a parser and\ncorresponding quasiquoter, a unit test framework for LSL, and a simulator for running\nscripts.";
        buildType = "Simple";
      };
      components = {
        LslPlus = {
          depends  = [
            hsPkgs.ghc
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.HaXml
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.network
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.old-time
            hsPkgs.utf8-string
            hsPkgs.pureMD5
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.syb
          ];
        };
        exes = {
          LslPlus = {
            depends  = [
              hsPkgs.ghc
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.HaXml
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.array
              hsPkgs.network
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.old-time
              hsPkgs.utf8-string
              hsPkgs.pureMD5
              hsPkgs.bytestring
              hsPkgs.template-haskell
              hsPkgs.syb
            ];
          };
        };
      };
    }