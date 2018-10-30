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
        name = "hsc3-cairo";
        version = "0.14";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2012-2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-cairo";
      url = "";
      synopsis = "haskell supercollider cairo drawing";
      description = "haskell supercollider cairo drawing";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cairo)
          (hsPkgs.gtk)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.split)
        ];
      };
    };
  }