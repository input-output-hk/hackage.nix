{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "repa-io";
        version = "3.2.2.201204.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://repa.ouroborus.net";
      url = "";
      synopsis = "Read and write Repa arrays in various formats.";
      description = "Legacy version for Haskell Platform 2012.04. You will get better\nperformance if you upgrade to the most recent version of GHC.\nRead and write Repa arrays in various formats.";
      buildType = "Simple";
    };
    components = {
      "repa-io" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.repa)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.binary)
          (hsPkgs.bmp)
        ];
      };
    };
  }