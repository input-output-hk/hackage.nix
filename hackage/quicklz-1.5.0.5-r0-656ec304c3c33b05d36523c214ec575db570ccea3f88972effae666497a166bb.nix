{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { memory-safe = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "quicklz"; version = "1.5.0.5"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "as@hacks.yi.org";
      author = "Austin Seipp";
      homepage = "http://github.com/thoughtpolice/hs-quicklz";
      url = "";
      synopsis = "binding to QuickLZ compression library";
      description = "This package provides a high level binding to the QuickLZ (<http://quicklz.com>) library\nfor ByteStrings, under the GPLv2 license. QuickLZ is fast and compresses very well.\n\nThis package includes the QuickLZ 1.5.0 source code, with compression level 1 and streaming\ncurrently disabled.\n\nThe versioning scheme for this package is unusual. QuickLZ trys to be as fast as possible,\nand will break backwards compatibility to achieve it in newer versions. This versioning scheme\nreflects the QuickLZ versioning scheme: the first three digits of version w.x.y.z are\nthe quicklz version, with the 'z' component (and any further needed ones) being updates to this package,\nnot quicklz.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."quicklz" or (errorHandler.buildDepError "quicklz"))
          ];
          buildable = true;
        };
      };
    };
  }