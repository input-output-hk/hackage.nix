{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "STL";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bergey@alum.mit.edu";
        author = "Daniel Bergey";
        homepage = "http://github.com/bergey/STL";
        url = "";
        synopsis = "STL 3D geometry format parsing and pretty-printing";
        description = "STL is a simple file format for representing 3D\nobjects as the triangles which form their\nsurface.  It is common in 3D printing workflows.\nThis library provides parsing and serialization\nto the ASCII STL format.  The binary STL format\nis not yet supported.";
        buildType = "Simple";
      };
      components = {
        STL = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.attoparsec
            hsPkgs.text
          ];
        };
      };
    }