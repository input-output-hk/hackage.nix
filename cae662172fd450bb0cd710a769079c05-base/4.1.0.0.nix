{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "base";
          version = "4.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Basic libraries";
        description = "This package contains the Prelude and its support libraries,\nand a large collection of useful libraries ranging from data\nstructures to parsing combinators and debugging utilities.";
        buildType = "Configure";
      };
      components = {
        base = {
          depends  = pkgs.lib.optionals compiler.isGhc [
            hsPkgs.rts
            hsPkgs.ghc-prim
            hsPkgs.integer
          ];
          libs = pkgs.lib.optionals system.isWindows [
            pkgs.wsock32
            pkgs.msvcrt
            pkgs.kernel32
            pkgs.user32
            pkgs.shell32
          ];
        };
      };
    }