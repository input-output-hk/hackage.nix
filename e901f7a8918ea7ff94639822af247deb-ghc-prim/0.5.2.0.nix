{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "2.2";
        identifier = {
          name = "ghc-prim";
          version = "0.5.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "GHC primitives";
        description = "This package contains the primitive types and operations supplied by GHC.";
        buildType = "Simple";
      };
      components = {
        ghc-prim = {
          depends  = [ hsPkgs.rts ];
          libs = optionals system.isWindows [
            pkgs.user32
            pkgs.mingw32
            pkgs.mingwex
          ];
        };
      };
    }