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
      specVersion = "1.10";
      identifier = {
        name = "hsluv-haskell";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2018 modal/duality";
      maintainer = "surya@modalduality.org";
      author = "modal/duality";
      homepage = "";
      url = "";
      synopsis = "HSLuv conversion utility.";
      description = "Haskell port of the perceptually-uniform HSLuv colorspace model (http://www.hsluv.org/).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.colour)
        ];
      };
      tests = {
        "hsluv-haskell-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.colour)
            (hsPkgs.containers)
            (hsPkgs.hsluv-haskell)
          ];
        };
      };
    };
  }