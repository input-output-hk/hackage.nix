{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-data";
          version = "0.15";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2013-2014";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/t/hsc3-data";
        url = "";
        synopsis = "haskell supercollider data";
        description = "Data related functions useful when working with SC3.";
        buildType = "Simple";
      };
      components = {
        hsc3-data = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.Glob
            hsPkgs.hcg-minus
            hsPkgs.hmt
            hsPkgs.hsc3-lang
            hsPkgs.hsc3-plot
            hsPkgs.hsc3-sf-hsndfile
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.SVGPath
            hsPkgs.xml
          ];
        };
      };
    }