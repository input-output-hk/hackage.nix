{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HaTeX-meta";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Daniel Díaz";
        homepage = "";
        url = "";
        synopsis = "This package is deprecated. From version 3, HaTeX does not need this anymore.";
        description = "Please, note that this package is /deprecated/.\n\nThis packages belongs to the HaTeX project.\nIt builds the @.Monad@ modules.\n\n/Please, note that this version only works with GHC 7.4./";
        buildType = "Simple";
      };
      components = {
        exes = {
          "metahatex" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.haskell-src-exts
              hsPkgs.haddock
              hsPkgs.ghc
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Cabal
            ];
          };
        };
      };
    }