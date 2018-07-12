{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.5";
        identifier = {
          name = "LslPlus";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Robert Greayer 2008.";
        maintainer = "Robert Greayer <robgreayer@yahoo.com>";
        author = "Robert Greayer <robgreayer@yahoo.com>";
        homepage = "http:/lslplus.sourceforge.net/";
        url = "";
        synopsis = "An execution and testing framework for the Linden Scripting Language (LSL)";
        description = "Provides a framework for executing Linden Scripting Language scripts offline,\ni.e. outside a Second Life&#xAE; simulator.  The product is the LslPlus executable,\nwhich works in cooperation with the LSL Plus Eclipse plugin (the executable is not\nmuch use standalone).";
        buildType = "Simple";
      };
      components = {
        exes = {
          "LslPlus" = {
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