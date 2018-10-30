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
        name = "blaze-html";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt, Simon Meier";
      homepage = "http://jaspervdj.be/blaze";
      url = "";
      synopsis = "A blazingly fast HTML combinator library for Haskell";
      description = "A blazingly fast HTML combinator library for the Haskell\nprogramming language. The Text.Blaze module is a good\nstarting point, as well as this tutorial:\n<http://jaspervdj.be/blaze/tutorial.html>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "blaze-html-tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ];
        };
      };
    };
  }