{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3-lisp";
          version = "0.15";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2014";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/t/hsc3-lisp";
        url = "";
        synopsis = "LISP SUPERCOLLIDER";
        description = "LISP SUPERCOLLIDER";
        buildType = "Simple";
      };
      components = {
        exes = {
          hsc3-lisp = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.husk-scheme
              hsPkgs.hosc
              hsPkgs.hsc3
              hsPkgs.hsc3-dot
              hsPkgs.mtl
              hsPkgs.safe
              hsPkgs.unix
            ];
          };
        };
      };
    }