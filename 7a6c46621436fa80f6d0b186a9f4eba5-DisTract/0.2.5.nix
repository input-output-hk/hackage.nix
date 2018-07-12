{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "DisTract";
          version = "0.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "Matthew Sackman";
        maintainer = "Matthew Sackman <matthew@wellquite.org>";
        author = "Matthew Sackman";
        homepage = "http://distract.wellquite.org/";
        url = "";
        synopsis = "Distributed Bug Tracking System";
        description = "A distributed bug tracker layered on top of Monotone.";
        buildType = "Simple";
      };
      components = {
        "DisTract" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.filepath
            hsPkgs.chunks
            hsPkgs.hinstaller
            hsPkgs.xhtml
            hsPkgs.template-haskell
            hsPkgs.Cabal
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.directory
            hsPkgs.process
          ];
        };
        exes = {
          "DisTractNewBug" = {};
          "DisTractModifyBug" = {};
          "DisTractUpdateFormatAllBugs" = {};
          "DisTractUpdateFormatBug" = {};
          "DisTractFormatNew" = {};
          "DisTractSortBugs" = {};
          "DisTractInstaller" = {};
        };
      };
    }