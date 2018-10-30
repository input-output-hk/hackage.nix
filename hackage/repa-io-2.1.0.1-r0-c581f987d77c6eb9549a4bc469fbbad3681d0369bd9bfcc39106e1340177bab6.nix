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
        version = "2.1.0.1";
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
          (hsPkgs.repa)
          (hsPkgs.repa-bytestring)
          (hsPkgs.bmp)
          (hsPkgs.old-time)
        ];
      };
    };
  }