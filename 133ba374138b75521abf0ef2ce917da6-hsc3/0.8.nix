{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hsc3";
        version = "0.8";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2006-2010";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hsc3";
      url = "";
      synopsis = "Haskell SuperCollider";
      description = "hsc3 provides Sound.SC3, a haskell module that\nfacilitates using haskell as a client to the\nSuperCollider synthesis server.";
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
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.split)
        ];
      };
    };
  }