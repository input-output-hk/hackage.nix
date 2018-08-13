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
        name = "hls";
        version = "0.11";
      };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://www.slavepianos.org/rd/?t=hls";
      url = "";
      synopsis = "Haskell Lindenmayer Systems";
      description = "Haskell library for generating Lindemayer systems";
      buildType = "Simple";
    };
    components = {
      "hls" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hps)
        ];
      };
    };
  }