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
        name = "hsc3-auditor";
        version = "0.11";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2010-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hsc3-auditor";
      url = "";
      synopsis = "Haskell SuperCollider Auditor";
      description = "A simple-minded auditioner for music structures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.hmt)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
        ];
      };
    };
  }