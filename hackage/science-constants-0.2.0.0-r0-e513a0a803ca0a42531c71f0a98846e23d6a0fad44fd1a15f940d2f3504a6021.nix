{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "science-constants"; version = "0.2.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Anton Vorontsov <anton@enomsg.org>";
      author = "Anton Vorontsov <anton@enomsg.org>";
      homepage = "";
      url = "";
      synopsis = "Mathematical/physical/chemical constants";
      description = "This package provides constants and conversion factors commonly used in\nmathematics and physical sciences. The motivation is to make it easier\nto use ghci for quick scientific calculations [without the need to\nsearch for the constant values over the internet.] To make it even\nfriendlier, if multiple conventional names of a constant exist, they all\nare provided by this package. Wherever possible, TeX-style named\nconstants are also provided.\n\nThis package utilizes untyped values (i.e. untyped in terms of\n@unittyped@, @dimensional@, and similar libraries); and unless otherwise\nspecified, the constants are in SI units: mass in kilograms, length in\nmeters, etc.\n\nDue to floating-point calculation errors and to improve accuracy, the\npackage internally uses exact values even in cases where constants can\nbe mathematically derived one from another.\n\nMost of the constants values were taken from the Fundamental Constants\nData Center of the NIST Physical Measurement Laboratory (by Barry N.\nTaylor of the Data Center in close collaboration with Peter J. Mohr of\nthe Physical Measurement Laboratory's Atomic Physics Division.)\n<http://physics.nist.gov/cuu/>";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }