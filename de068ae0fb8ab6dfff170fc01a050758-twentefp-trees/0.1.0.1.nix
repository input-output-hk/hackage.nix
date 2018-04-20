{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "twentefp-trees";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sebastiaan.la.fleur@gmail.com";
        author = "Sebastiaan la Fleur";
        homepage = "";
        url = "";
        synopsis = "Tree type and show functions for lab assignment of University of Twente. Contains RoseTree and ParseTree";
        description = "";
        buildType = "Simple";
      };
      components = {
        twentefp-trees = {
          depends  = [
            hsPkgs.base
            hsPkgs.twentefp-eventloop-graphics
          ];
        };
      };
    }