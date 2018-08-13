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
        name = "bookkeeper";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/turingjump/bookkeeper#readme";
      url = "";
      synopsis = "";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "bookkeeper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.type-level-sets)
        ];
      };
      exes = {
        "readme" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.type-level-sets)
            (hsPkgs.base)
            (hsPkgs.bookkeeper)
            (hsPkgs.markdown-unlit)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.type-level-sets)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
            (hsPkgs.yaml)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.type-level-sets)
            (hsPkgs.bookkeeper)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }