{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-rw";
          version = "0.14";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape and others, 2013";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hsc3-rw";
        url = "";
        synopsis = "hsc3 re-writing";
        description = "hsc3 re-writing";
        buildType = "Simple";
      };
      components = {
        hsc3-rw = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.parsec
            hsPkgs.polyparse
            hsPkgs.split
            hsPkgs.syb
            hsPkgs.transformers
            hsPkgs.haskell-src-exts
          ];
        };
      };
    }