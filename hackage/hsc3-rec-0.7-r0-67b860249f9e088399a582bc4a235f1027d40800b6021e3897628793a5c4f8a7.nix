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
        name = "hsc3-rec";
        version = "0.7";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2008";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/f/197482/";
      url = "";
      synopsis = "Haskell SuperCollider Record Variants";
      description = "hsc3-rsc provides record variants of the\nunit generator constructors at hsc3.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hsc3)
        ];
      };
    };
  }