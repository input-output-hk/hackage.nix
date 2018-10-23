{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "fec";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Adam Langley <agl@imperialviolet.org>";
      author = "Adam Langley <agl@imperialviolet.org>";
      homepage = "http://allmydata.org/source/zfec";
      url = "";
      synopsis = "Forward error correction of ByteStrings";
      description = "This code, based on zfec by Zooko, based on code by Luigi\nRizzo implements an erasure code, or forward error\ncorrection code. The most widely known example of an erasure\ncode is the RAID-5 algorithm which makes it so that in the\nevent of the loss of any one hard drive, the stored data can\nbe completely recovered.  The algorithm in the zfec package\nhas a similar effect, but instead of recovering from the loss\nof only a single element, it can be parameterized to choose in\nadvance the number of elements whose loss it can tolerate.";
      buildType = "Simple";
    };
    components = {
      "fec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }