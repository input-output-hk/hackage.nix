{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "digestive-functors-heist";
          version = "0.6.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
        author = "Jasper Van der Jeugt <m@jaspervdj.be>";
        homepage = "http://github.com/jaspervdj/digestive-functors";
        url = "";
        synopsis = "Heist frontend for the digestive-functors library";
        description = "Heist frontend for the digestive-functors library";
        buildType = "Simple";
      };
      components = {
        digestive-functors-heist = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.digestive-functors
            hsPkgs.heist
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.xmlhtml
          ];
        };
      };
    }