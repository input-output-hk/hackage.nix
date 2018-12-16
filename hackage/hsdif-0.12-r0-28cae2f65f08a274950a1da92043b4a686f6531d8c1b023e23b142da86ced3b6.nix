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
        name = "hsdif";
        version = "0.12";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2010-2012";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsdif";
      url = "";
      synopsis = "Haskell SDIF";
      description = "hsdif provides Sound.SDIF, a haskell\nmodule implementing a subset of Sound Description\nInterchange Format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hosc)
        ];
      };
    };
  }