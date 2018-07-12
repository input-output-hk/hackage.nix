{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "digestive-functors-hsp";
          version = "0.4.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "http://src.seereason.com/digestive-functors-hsp";
        url = "";
        synopsis = "HSP support for digestive-functors";
        description = "This is an HSP frontend for the digestive-functors library.";
        buildType = "Custom";
      };
      components = {
        "digestive-functors-hsp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.digestive-functors
            hsPkgs.hsp
            hsPkgs.hsx
            hsPkgs.text
          ];
        };
      };
    }