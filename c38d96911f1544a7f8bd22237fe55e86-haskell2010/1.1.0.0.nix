{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskell2010";
          version = "1.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "http://www.haskell.org/definition/";
        url = "";
        synopsis = "Compatibility with Haskell 2010";
        description = "This package provides exactly the library modules defined by\nthe Haskell 2010 standard.";
        buildType = "Simple";
      };
      components = {
        haskell2010 = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }