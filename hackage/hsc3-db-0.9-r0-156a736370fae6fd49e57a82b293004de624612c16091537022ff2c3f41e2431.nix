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
      specVersion = "1.6";
      identifier = {
        name = "hsc3-db";
        version = "0.9";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hsc3-db";
      url = "";
      synopsis = "Haskell SuperCollider Unit Generator Database";
      description = "Database of SuperCollider Unit Generators";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hsc3)
        ];
      };
    };
  }