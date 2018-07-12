{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "threadscope";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Released under the GHC license";
        maintainer = "Satnam Singh <s.singh@ieee.org>";
        author = "Donnie Jones, Simon Marlow, Satnam Singh";
        homepage = "";
        url = "";
        synopsis = "A graphical thread profiler.";
        description = "A graphical viewer for GHC eventlog traces.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "threadscope" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.cairo
              hsPkgs.glade
              hsPkgs.binary
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.ghc-events
              hsPkgs.containers
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }