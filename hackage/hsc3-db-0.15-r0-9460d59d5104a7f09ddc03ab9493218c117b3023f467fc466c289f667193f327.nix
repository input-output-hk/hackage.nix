{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsc3-db";
        version = "0.15";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hsc3-db";
      url = "";
      synopsis = "Haskell SuperCollider Unit Generator Database";
      description = "Database of SuperCollider Unit Generators";
      buildType = "Simple";
    };
    components = {
      "hsc3-db" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hsc3)
          (hsPkgs.safe)
        ];
      };
    };
  }