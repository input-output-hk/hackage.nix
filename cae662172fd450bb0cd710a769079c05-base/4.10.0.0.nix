{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      integer-simple = false;
      integer-gmp = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "base";
          version = "4.10.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Basic libraries";
        description = "This package contains the \"Prelude\" and its support libraries,\nand a large collection of useful libraries ranging from data\nstructures to parsing combinators and debugging utilities.";
        buildType = "Configure";
      };
      components = {
        base = {
          depends  = (([
            hsPkgs.rts
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional (!(_flags.integer-gmp && !_flags.integer-simple || !_flags.integer-gmp && _flags.integer-simple)) hsPkgs.invalid-cabal-flag-settings) ++ pkgs.lib.optional _flags.integer-simple hsPkgs.integer-simple) ++ pkgs.lib.optional _flags.integer-gmp hsPkgs.integer-gmp;
          libs = pkgs.lib.optionals system.isWindows [
            pkgs.wsock32
            pkgs.user32
            pkgs.shell32
            pkgs.msvcrt
            pkgs.mingw32
            pkgs.mingwex
          ];
        };
      };
    }