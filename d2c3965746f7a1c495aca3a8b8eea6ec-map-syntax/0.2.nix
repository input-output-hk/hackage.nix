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
        name = "map-syntax";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Doug Beardsley";
      author = "Doug Beardsley";
      homepage = "";
      url = "";
      synopsis = "Syntax sugar for defining maps";
      description = "Haskell's canonical list of tuples syntax for defining maps is not very\nconvenient and also has ambiguous semantics.  This package leverages do\nnotation to create a lighter syntax that makes semantics explicit and also\nallows the option of fail-fast handling of duplicate keys.";
      buildType = "Simple";
    };
    components = {
      "map-syntax" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }