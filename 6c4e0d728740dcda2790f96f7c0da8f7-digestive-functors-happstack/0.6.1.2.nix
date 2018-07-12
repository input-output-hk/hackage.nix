{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "digestive-functors-happstack";
          version = "0.6.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
        author = "Jasper Van der Jeugt <m@jaspervdj.be>";
        homepage = "http://github.com/jaspervdj/digestive-functors";
        url = "";
        synopsis = "Happstack backend for the digestive-functors library";
        description = "Happstack backend for the digestive-functors library";
        buildType = "Simple";
      };
      components = {
        "digestive-functors-happstack" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.digestive-functors
            hsPkgs.happstack-server
            hsPkgs.text
          ];
        };
      };
    }