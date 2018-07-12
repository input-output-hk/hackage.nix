{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal2arch";
          version = "0.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ArchHaskell Team <arch-haskell@haskell.org>";
        author = "Don Stewart <dons@galois.com>";
        homepage = "http://github.com/archhaskell/";
        url = "";
        synopsis = "Create Arch Linux packages from Cabal packages.";
        description = "Create Arch Linux packages from Cabal packages.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cabal2arch" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.archlinux
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }