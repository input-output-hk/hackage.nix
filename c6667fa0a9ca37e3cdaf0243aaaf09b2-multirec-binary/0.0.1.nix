{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "multirec-binary";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sfvisser@cs.uu.nl";
        author = "Sebastiaan Visser";
        homepage = "";
        url = "";
        synopsis = "Generic Data.Binary instances using MultiRec.";
        description = "Generic Data.Binary instances using MultiRec.";
        buildType = "Simple";
      };
      components = {
        "multirec-binary" = {
          depends  = [
            hsPkgs.base
            hsPkgs.multirec
            hsPkgs.binary
          ];
        };
      };
    }