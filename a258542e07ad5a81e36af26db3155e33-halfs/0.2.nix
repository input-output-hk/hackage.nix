{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "halfs";
          version = "0.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2005 Galois Connections, Inc.";
        maintainer = "Iaaac Jones <ijones@syntaxpolice.org>";
        author = "Isaac Jones, Galois Inc.";
        homepage = "http://haskell.org/halfs/";
        url = "";
        synopsis = "Haskell File System";
        description = "Halfs is a filesystem implemented in the functional programming\nlanguage Haskell. Halfs can be mounted and used like any other Linux\nfilesystem, or used as a library.  Halfs is a fork (and a port) of the\nfilesystem developed by Galois Connections. See also http://haskell.org/pipermail/haskell-cafe/2006-April/015361.html\n\nYou can get it from here: http://darcs.haskell.org/halfs";
        buildType = "Simple";
      };
      components = {
        halfs = {
          depends  = [
            hsPkgs.HUnit
            hsPkgs.unix
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.random
          ];
        };
        exes = {
          moduleTest = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.unix
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.network
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.random
            ];
          };
          newfs-halfs = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.unix
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.network
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.random
            ];
          };
          fsck-halfs = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.unix
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.network
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.random
            ];
          };
        };
      };
    }