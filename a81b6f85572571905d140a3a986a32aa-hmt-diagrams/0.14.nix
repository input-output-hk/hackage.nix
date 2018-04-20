{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmt-diagrams";
          version = "0.14";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2013";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hmt-diagrams";
        url = "";
        synopsis = "Haskell Music Theory Diagrams";
        description = "Haskell Music Theory Diagrams";
        buildType = "Simple";
      };
      components = {
        hmt-diagrams = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.colour
            hsPkgs.hcg-minus
            hsPkgs.hcg-minus-cairo
            hsPkgs.hmt
            hsPkgs.html-minimalist
            hsPkgs.filepath
            hsPkgs.xml
          ];
        };
      };
    }