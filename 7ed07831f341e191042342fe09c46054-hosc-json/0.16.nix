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
        name = "hosc-json";
        version = "0.16";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2013-2017";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hosc-json";
      url = "";
      synopsis = "Haskell Open Sound Control JSON Serialisation";
      description = "hosc-json";
      buildType = "Simple";
    };
    components = {
      "hosc-json" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.hosc)
          (hsPkgs.bytestring)
          (hsPkgs.json)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
    };
  }