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
        name = "string-random";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016- hiratara";
      maintainer = "hiratara@cpan.org";
      author = "Masahiro Honma";
      homepage = "https://github.com/hiratara/hs-string-random#readme";
      url = "";
      synopsis = "A library for generating random string from a regular experession";
      description = "With this package you can generate random strings from\nregular expressions. If you are using QuickCheck, you can\nalso check the quickcheck-string-random package.";
      buildType = "Simple";
    };
    components = {
      "string-random" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "hstrrand" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.string-random)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "string-random-quickcheck" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.pcre-heavy)
            (hsPkgs.string-random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
          ];
        };
        "string-random-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.pcre-heavy)
            (hsPkgs.string-random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }