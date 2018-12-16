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
        name = "hsc3-rw";
        version = "0.15";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2013-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-rw";
      url = "";
      synopsis = "hsc3 re-writing";
      description = "hsc3 re-writing";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.parsec)
          (hsPkgs.polyparse)
          (hsPkgs.split)
          (hsPkgs.syb)
          (hsPkgs.transformers)
          (hsPkgs.haskell-src-exts)
        ];
      };
    };
  }