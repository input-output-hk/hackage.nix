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
        name = "shapes-math";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Kynan Rilee";
      maintainer = "kynan.rilee@gmail.com";
      author = "Kynan Rilee";
      homepage = "https://github.com/ublubu/shapes#readme";
      url = "";
      synopsis = "faster vector/matrix math using unboxed numbers and Template Haskell";
      description = "Please see the README on Github at <https://github.com/ublubu/shapes#readme>";
      buildType = "Simple";
    };
    components = {
      "shapes-math" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "math-bench" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.ghc-prim)
            (hsPkgs.linear)
            (hsPkgs.shapes-math)
            (hsPkgs.template-haskell)
          ];
        };
      };
      tests = {
        "math-spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.hspec)
            (hsPkgs.linear)
            (hsPkgs.shapes-math)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }