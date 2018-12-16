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
        name = "hsc3";
        version = "0.11";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2006-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hsc3";
      url = "";
      synopsis = "Haskell SuperCollider";
      description = "hsc3 facilitates using haskell as a client to the\nSuperCollider synthesis server.\nFor detailed installation and configuration\ninformation please consult the /Tutorial/ and\n/Introduction/ documents at\n<http://slavepianos.org/rd/ut/hsc3-texts/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cmath)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hosc)
          (hsPkgs.murmur-hash)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.split)
        ];
      };
    };
  }