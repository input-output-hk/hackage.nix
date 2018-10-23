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
        name = "repa-bytestring";
        version = "2.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://repa.ouroborus.net";
      url = "";
      synopsis = "Conversions between Repa Arrays and ByteStrings.";
      description = "Conversions between Repa Arrays and ByteStrings.";
      buildType = "Simple";
    };
    components = {
      "repa-bytestring" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.repa)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
        ];
      };
    };
  }