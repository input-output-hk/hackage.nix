{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      integer-simple = false;
      integer-gmp = false;
      integer-gmp2 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "base";
          version = "4.8.1.0";
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
        "base" = {
          depends  = (([
            hsPkgs.rts
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional _flags.integer-simple hsPkgs.integer-simple) ++ pkgs.lib.optional _flags.integer-gmp hsPkgs.integer-gmp) ++ pkgs.lib.optional _flags.integer-gmp2 hsPkgs.integer-gmp;
          libs = pkgs.lib.optionals system.isWindows [
            pkgs.wsock32
            pkgs.user32
            pkgs.shell32
          ];
        };
      };
    }