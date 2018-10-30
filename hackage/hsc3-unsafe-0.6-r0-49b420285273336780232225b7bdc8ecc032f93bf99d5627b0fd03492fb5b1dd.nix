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
      specVersion = "1.2";
      identifier = {
        name = "hsc3-unsafe";
        version = "0.6";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2008";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/f/382071/";
      url = "";
      synopsis = "Unsafe Haskell SuperCollider";
      description = "hsc3 provides Sound.SC3.UGen.Unsafe.";
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