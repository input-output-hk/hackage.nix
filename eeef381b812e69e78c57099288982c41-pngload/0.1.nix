{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "pngload";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Marko Lauronen";
        maintainer = "Marko Lauronen <marko.lauronen@pp1.inet.fi>";
        author = "Marko Lauronen <marko.lauronen@pp1.inet.fi>";
        homepage = "";
        url = "";
        synopsis = "Pure Haskell loader for PNG images";
        description = "This package provides a simple PNG loader for PNG images. It currently supports\n24bit RGB(A) images with no interlacing.";
        buildType = "Simple";
      };
      components = {
        pngload = {
          depends  = [
            hsPkgs.base
            hsPkgs.zlib
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.haskell98
          ];
        };
      };
    }