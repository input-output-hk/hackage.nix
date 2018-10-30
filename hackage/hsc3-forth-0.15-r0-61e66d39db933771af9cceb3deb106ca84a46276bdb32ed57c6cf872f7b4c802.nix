{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsc3-forth";
        version = "0.15";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hsc3-forth";
      url = "";
      synopsis = "FORTH SUPERCOLLIDER";
      description = "FORTH SUPERCOLLIDER";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsc3-forth" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.hosc)
            (hsPkgs.hsc3)
            (hsPkgs.hsc3-db)
            (hsPkgs.hsc3-dot)
            (hsPkgs.mtl)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }