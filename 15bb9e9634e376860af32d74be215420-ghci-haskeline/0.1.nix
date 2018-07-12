{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ghci-haskeline";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "BSD3";
        maintainer = "Judah Jacobson <judah.jacobson@gmail.com>";
        author = "";
        homepage = "http://code.haskell.org/~judah/ghci-haskeline";
        url = "";
        synopsis = "An implementation of ghci using the Haskeline line-input library.";
        description = "This package reimplements ghci using the GHC API and the Haskeline\npackage for line input in command-line programs.\n\nThis is an unofficial package; thus any bugs may be the fault of\nthe maintainer rather than of the GHC team.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "ghci-haskeline" = {
            depends  = [
              hsPkgs.ghc
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.mtl
              hsPkgs.haskeline
              hsPkgs.ghc-paths
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
      };
    }