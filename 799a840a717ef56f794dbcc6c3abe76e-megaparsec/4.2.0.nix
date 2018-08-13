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
        name = "megaparsec";
        version = "4.2.0";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov@opmbx.org>";
      author = "Megaparsec contributors,\nPaolo Martini <paolo@nemail.it>,\nDaan Leijen <daan@microsoft.com>";
      homepage = "https://github.com/mrkkrp/megaparsec";
      url = "";
      synopsis = "Monadic parser combinators";
      description = "This is industrial-strength monadic parser combinator library. Megaparsec is\na fork of Parsec library originally written by Daan Leijen.";
      buildType = "Simple";
    };
    components = {
      "megaparsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "old-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.megaparsec)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.megaparsec)
            (hsPkgs.criterion)
            (hsPkgs.text)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }