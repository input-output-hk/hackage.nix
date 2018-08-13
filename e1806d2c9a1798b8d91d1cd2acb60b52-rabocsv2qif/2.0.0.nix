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
      specVersion = "1.2";
      identifier = {
        name = "rabocsv2qif";
        version = "2.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "sander.venema@gmail.com";
      author = "Sander Venema";
      homepage = "";
      url = "";
      synopsis = "A library and program to create QIF files from Rabobank CSV exports.";
      description = "The rabocsv2qif package exposes a library, Rabobank, and an\nexecutable, rabocsv2qif. With the executable you can quickly\ncreate a timestamped QIF file from a Rabobank CSV file with\ntransactions. The library exposes a method, toQif, that can be\nused to create QIF data in code. It simply takes a ByteString and\nreturns a ByteString.";
      buildType = "Simple";
    };
    components = {
      "rabocsv2qif" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-conversion)
          (hsPkgs.time)
          (hsPkgs.split)
        ];
      };
      exes = {
        "rabocsv2qif" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }