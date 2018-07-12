{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      use-network-uri = true;
      use-old-time = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "hackage-repo-tool";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2015 Well-Typed LLP";
        maintainer = "cabal-devel@haskell.org";
        author = "Edsko de Vries";
        homepage = "https://github.com/haskell/hackage-security";
        url = "";
        synopsis = "Utility to manage secure file-based package repositories";
        description = "This utility can be used to manage secure file-based package\nrepositories (creating [TUF](https://theupdateframework.github.io/)\nmetadata as well as a Hackage index tarball) which can be used by\nclients such as [cabal-install](http://hackage.haskell.org/package/cabal-install).\nCurrently it also provides various lower level utilities for creating\nand signing TUF files.\n\nThis is part of the [Hackage Security](https://github.com/haskell/hackage-security#readme)\ninfrastructure.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hackage-repo-tool" = {
            depends  = (([
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.tar
              hsPkgs.time
              hsPkgs.zlib
              hsPkgs.hackage-security
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ (if _flags.use-old-time
              then [
                hsPkgs.directory
                hsPkgs.old-time
              ]
              else [
                hsPkgs.directory
              ])) ++ (if _flags.use-network-uri
              then [
                hsPkgs.network-uri
                hsPkgs.network
              ]
              else [ hsPkgs.network ]);
          };
        };
      };
    }