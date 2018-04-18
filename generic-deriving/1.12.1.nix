{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base-4-9 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "generic-deriving";
          version = "1.12.1";
        };
        license = "BSD-3-Clause";
        copyright = "2011-2013 Universiteit Utrecht, University of Oxford";
        maintainer = "generics@haskell.org";
        author = "José Pedro Magalhães";
        homepage = "https://github.com/dreixel/generic-deriving";
        url = "";
        synopsis = "Generic programming library for generalised deriving.";
        description = "This package provides functionality for generalising the deriving mechanism\nin Haskell to arbitrary classes. It was first described in the paper:\n\n*  /A generic deriving mechanism for Haskell/.\nJose Pedro Magalhaes, Atze Dijkstra, Johan Jeuring, and Andres Loeh.\nHaskell'10.\n\nThe current implementation integrates with the new GHC Generics. See\n<http://www.haskell.org/haskellwiki/GHC.Generics> for more information.\nTemplate Haskell code is provided for supporting older GHCs.";
        buildType = "Simple";
      };
      components = {
        generic-deriving = {
          depends  = [
            hsPkgs.containers
            hsPkgs.ghc-prim
            hsPkgs.template-haskell
          ] ++ [ hsPkgs.base ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.generic-deriving
              hsPkgs.hspec
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }