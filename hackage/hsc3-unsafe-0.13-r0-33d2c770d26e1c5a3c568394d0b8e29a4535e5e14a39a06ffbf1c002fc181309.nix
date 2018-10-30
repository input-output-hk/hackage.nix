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
        name = "hsc3-unsafe";
        version = "0.13";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2012";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-unsafe";
      url = "";
      synopsis = "Unsafe Haskell SuperCollider";
      description = "Alternate non-deterministic UGen constructors.";
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