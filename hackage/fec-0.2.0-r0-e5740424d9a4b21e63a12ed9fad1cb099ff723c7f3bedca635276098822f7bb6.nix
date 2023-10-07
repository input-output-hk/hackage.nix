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
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "fec"; version = "0.2.0"; };
      license = "GPL-2.0-or-later";
      copyright = "";
      maintainer = "Adam Langley <agl@imperialviolet.org>";
      author = "Adam Langley <agl@imperialviolet.org>";
      homepage = "https://github.com/tahoe-lafs/zfec";
      url = "";
      synopsis = "Forward error correction of ByteStrings";
      description = "This code, based on zfec by Zooko, based on code by Luigi\nRizzo implements an erasure code, or forward error\ncorrection code. The most widely known example of an erasure\ncode is the RAID-5 algorithm which makes it so that in the\nevent of the loss of any one hard drive, the stored data can\nbe completely recovered.  The algorithm in the zfec package\nhas a similar effect, but instead of recovering from the loss\nof only a single element, it can be parameterized to choose in\nadvance the number of elements whose loss it can tolerate.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          ];
        buildable = true;
        };
      exes = {
        "benchmark-zfec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fec" or (errorHandler.buildDepError "fec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-serializer" or (errorHandler.buildDepError "data-serializer"))
            (hsPkgs."fec" or (errorHandler.buildDepError "fec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }