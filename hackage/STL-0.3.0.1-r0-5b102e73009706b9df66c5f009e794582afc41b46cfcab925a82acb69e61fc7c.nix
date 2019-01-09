{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "STL"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bergey@alum.mit.edu";
      author = "Daniel Bergey";
      homepage = "http://github.com/bergey/STL";
      url = "";
      synopsis = "STL 3D geometry format parsing and pretty-printing";
      description = "STL is a simple file format for representing 3D\nobjects as the triangles which form their\nsurface.  It is common in 3D printing workflows.\nThis library provides parsing and serialization\nto and from both text and binary STL formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          ];
        };
      };
    }