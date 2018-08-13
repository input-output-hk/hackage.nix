{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      memory-safe = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "quicklz";
        version = "1.5.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "as@hacks.yi.org";
      author = "Austin Seipp";
      homepage = "http://github.com/thoughtpolice/hs-quicklz";
      url = "";
      synopsis = "binding to QuickLZ compression library";
      description = "This package provides a high level binding to the QuickLZ (http://quicklz.com) library\nfor ByteStrings, under the GPLv2. QuickLZ is fast and compresses very well.\n\nThis package includes the QuickLZ source code, with compression level 1 and streaming\ncurrently disabled.\n\nThe versioning scheme for this package is unusual. QuickLZ trys to be as fast as possible,\nand will break backwards compatibility to achieve it in new versions. This versioning scheme\nreflects the QuickLZ versioning scheme: the first three digits of version w.x.y.z digits are\nthe quicklz version, with the 'z' component (and any further needed ones) being updates to this package,\nnot the underlying version.";
      buildType = "Simple";
    };
    components = {
      "quicklz" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.quicklz)
          ];
        };
      };
    };
  }