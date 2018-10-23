{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cereal-vector";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acfoltzer@gmail.com";
      author = "Adam C. Foltzer";
      homepage = "https://github.com/acfoltzer/cereal-vector";
      url = "";
      synopsis = "Serialize instances for Data.Vector types.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "cereal-vector" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.cereal)
            (hsPkgs.cereal-vector)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }