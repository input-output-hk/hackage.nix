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
        name = "hosc";
        version = "0.8";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2010";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hosc";
      url = "";
      synopsis = "Haskell Open Sound Control";
      description = "hosc provides Sound.OpenSoundControl, a haskell\nmodule implementing a subset of the Open Sound\nControl byte protocol.";
      buildType = "Simple";
    };
    components = {
      "hosc" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.network)
          (hsPkgs.time)
        ];
      };
    };
  }