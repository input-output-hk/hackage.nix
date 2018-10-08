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
      specVersion = "1.10";
      identifier = {
        name = "antiope-contract";
        version = "6.0.2";
      };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/packetloop/antiope-contract#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      buildType = "Simple";
    };
    components = {
      "antiope-contract" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.antiope-s3)
          (hsPkgs.avro)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }