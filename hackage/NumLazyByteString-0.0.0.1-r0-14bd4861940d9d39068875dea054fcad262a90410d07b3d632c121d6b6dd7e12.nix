{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "NumLazyByteString";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Num, Enum, Eq, Integral, Ord, Real, and Show instances for Lazy ByteStrings";
      description = "Num, Enum, Eq, Integral, Ord, Real, and Show instances for Lazy ByteStrings";
      buildType = "Simple";
    };
    components = {
      "NumLazyByteString" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
        ];
      };
    };
  }