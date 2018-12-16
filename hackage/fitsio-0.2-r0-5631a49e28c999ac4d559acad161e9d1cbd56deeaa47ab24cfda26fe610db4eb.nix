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
      specVersion = "1.2.0";
      identifier = {
        name = "fitsio";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "nubgames@gmail.com";
      author = "Eric Sessoms <nubgames@gmail.com>";
      homepage = "http://github.com/esessoms/fitsio";
      url = "";
      synopsis = "A library for reading and writing data files in the FITS data format.";
      description = "FITS (Flexible Image Transport System) is self-describing data format used\nheavily in astronomy and high-energy physics.  Right now this library is just\nan FFI wrapper, but higher-level functionality is planned.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
        ];
        libs = [ (pkgs."cfitsio") ];
      };
    };
  }