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
      specVersion = "1.8";
      identifier = {
        name = "noise";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "Tom Brow";
      maintainer = "Tom Brow <tom@tombrow.com>";
      author = "Tom Brow";
      homepage = "http://github.com/brow/noise";
      url = "";
      synopsis = "A friendly language for graphic design";
      description = "A friendly language for graphic design";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-svg)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.network)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "noise" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.noise)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.HTF)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.string-qq)
            (hsPkgs.noise)
          ];
        };
      };
    };
  }