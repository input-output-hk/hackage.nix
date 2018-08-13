{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "HasBigDecimal";
        version = "0.1.1";
      };
      license = "Apache-2.0";
      copyright = "2018 Thomas Mahler";
      maintainer = "thma@apache.org";
      author = "Thomas Mahler";
      homepage = "https://github.com/thma/HasBigDecimal#readme";
      url = "";
      synopsis = "A library for arbitrary precision decimal numbers.";
      description = "A native Haskell implementation of arbitrary precicion decimal numbers, based on Haskell Integers. Inspired by Java BigDecimals";
      buildType = "Simple";
    };
    components = {
      "HasBigDecimal" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "HasBigDecimal-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HasBigDecimal)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }