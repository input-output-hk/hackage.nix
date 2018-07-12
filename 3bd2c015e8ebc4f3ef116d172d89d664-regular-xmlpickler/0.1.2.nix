{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "regular-xmlpickler";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009, typLAB";
        maintainer = "code@typlab.com";
        author = "typLAB";
        homepage = "http://github.com/typLAB/regular-xmlpickler";
        url = "";
        synopsis = "Generic generation of HXT XmlPickler instances using Regular.";
        description = "Generic generation of HXT XmlPickler instances using Regular.";
        buildType = "Simple";
      };
      components = {
        "regular-xmlpickler" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.regular
          ];
        };
      };
    }