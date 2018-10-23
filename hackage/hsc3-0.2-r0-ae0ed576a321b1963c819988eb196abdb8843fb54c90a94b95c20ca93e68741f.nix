{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hsc3";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2008";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/f/207949/";
      url = "";
      synopsis = "Haskell SuperCollider";
      description = "Haskell client for the SuperCollider synthesis server";
      buildType = "Simple";
    };
    components = {
      "hsc3" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hosc)
          (hsPkgs.network)
          (hsPkgs.random)
        ];
      };
    };
  }