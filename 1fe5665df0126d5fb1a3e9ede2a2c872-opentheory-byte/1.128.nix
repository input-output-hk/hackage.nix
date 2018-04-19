{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "opentheory-byte";
          version = "1.128";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
        author = "Joe Leslie-Hurd <joe@gilith.com>";
        homepage = "http://opentheory.gilith.com/?pkg=byte";
        url = "";
        synopsis = "Bytes";
        description = "Bytes - this package was automatically generated from the OpenTheory\npackage byte-1.128";
        buildType = "Simple";
      };
      components = {
        opentheory-byte = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.opentheory-primitive
            hsPkgs.opentheory
            hsPkgs.opentheory-bits
            hsPkgs.opentheory-probability
          ];
        };
      };
    }