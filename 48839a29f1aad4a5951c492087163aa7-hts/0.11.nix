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
      specVersion = "1.8";
      identifier = {
        name = "hts";
        version = "0.11";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2010-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hts";
      url = "";
      synopsis = "Haskell Music Typesetting";
      description = "A simple music typesetting model in haskell";
      buildType = "Simple";
    };
    components = {
      "hts" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hmt)
          (hsPkgs.xml)
        ];
      };
    };
  }