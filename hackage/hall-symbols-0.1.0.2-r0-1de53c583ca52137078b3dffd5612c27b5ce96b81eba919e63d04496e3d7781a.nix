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
        name = "hall-symbols";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Jun Narumi";
      maintainer = "narumij@gmail.com";
      author = "Jun Narumi";
      homepage = "https://github.com/narumij/hall-symbols#readme";
      url = "";
      synopsis = "Symmetry operations generater of Hall Symbols";
      description = "Please see the README on GitHub at <https://github.com/narumij/hall-symbols#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.doctest)
          (hsPkgs.matrix)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "hall-symbols-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.hall-symbols)
            (hsPkgs.hspec)
            (hsPkgs.matrix)
            (hsPkgs.matrix-as-xyz)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }