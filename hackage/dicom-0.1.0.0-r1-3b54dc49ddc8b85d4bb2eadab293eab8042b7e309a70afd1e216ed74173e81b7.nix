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
      specVersion = "1.10";
      identifier = {
        name = "dicom";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) DICOM Grid Inc. 2015";
      maintainer = "paf31@cantab.net";
      author = "Phil Freeman";
      homepage = "http://github.com/dicomgrid/dicom-haskell-library/";
      url = "";
      synopsis = "A library for reading and writing DICOM files in the Explicit VR Little Endian transfer syntax.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.old-locale)
          (hsPkgs.pretty)
          (hsPkgs.safe)
        ];
      };
    };
  }