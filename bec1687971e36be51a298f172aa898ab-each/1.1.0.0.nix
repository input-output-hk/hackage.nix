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
        name = "each";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) dramforever <dramforever@live.com>";
      maintainer = "dramforever@live.com";
      author = "dramforever";
      homepage = "https://github.com/dramforever/each#readme";
      url = "";
      synopsis = "Template Haskell library for writing monadic expressions more easily";
      description = "See README at the bottom.\n\n/Getting started/: See \"Each\".";
      buildType = "Simple";
    };
    components = {
      "each" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.dlist)
        ];
      };
      tests = {
        "each-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.each)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }