{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "pngload-fixed";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Marko Lauronen";
        maintainer = "Rob Agar <robagar@fastmail.net>";
        author = "Marko Lauronen <marko.lauronen@pp1.inet.fi>";
        homepage = "";
        url = "";
        synopsis = "Pure Haskell loader for PNG images";
        description = "This package provides a simple PNG loader for PNG images. It currently supports\n24bit RGB(A) images with no interlacing.\nThis fixed version is the same as pngload-0.1, but without the haskell98 dependency.";
        buildType = "Simple";
      };
      components = {
        pngload-fixed = {
          depends  = [
            hsPkgs.base
            hsPkgs.zlib
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.mtl
          ];
        };
      };
    }