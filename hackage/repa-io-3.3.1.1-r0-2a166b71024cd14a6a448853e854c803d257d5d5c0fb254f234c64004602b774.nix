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
      specVersion = "1.6";
      identifier = {
        name = "repa-io";
        version = "3.3.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://repa.ouroborus.net";
      url = "";
      synopsis = "Read and write Repa arrays in various formats.";
      description = "Read and write Repa arrays in various formats.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.binary)
          (hsPkgs.old-time)
          (hsPkgs.repa)
          (hsPkgs.bytestring)
          (hsPkgs.bmp)
        ];
      };
    };
  }