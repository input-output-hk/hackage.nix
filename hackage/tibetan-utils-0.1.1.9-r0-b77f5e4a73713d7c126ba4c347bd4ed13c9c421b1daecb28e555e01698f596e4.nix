{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tibetan-utils";
        version = "0.1.1.9";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Parse and display tibetan numerals";
      description = "This package provides a [megaparsec](http://hackage.haskell.org/package/megaparsec) parser for Tibetan numerals, as well as efficient means to display numbers using Tibetan numerals.";
      buildType = "Simple";
    };
    components = {
      "tibetan-utils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.megaparsec)
          (hsPkgs.text)
          (hsPkgs.composition-prelude)
          (hsPkgs.text-show)
          (hsPkgs.either)
        ];
      };
      tests = {
        "tibetan-utils-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tibetan-utils)
            (hsPkgs.hspec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.text)
            (hsPkgs.megaparsec)
          ];
        };
      };
    };
  }