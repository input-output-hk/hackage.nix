{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "archlinux";
          version = "0.3.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ArchHaskell Team <arch-haskell@haskell.org>";
        author = "Don Stewart <dons@galois.com>";
        homepage = "http://github.com/archhaskell/";
        url = "";
        synopsis = "Support for working with Arch Linux packages.";
        description = "Support for working with Arch Linux packages.\nSee also the cabal2arch tool <http://hackage.haskell.org/package/cabal2arch>\nfor conversion between Hackage and AUR.";
        buildType = "Simple";
      };
      components = {
        archlinux = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.tar
          ];
        };
        exes = {
          recdeps = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.pretty
              hsPkgs.Cabal
            ];
          };
        };
      };
    }