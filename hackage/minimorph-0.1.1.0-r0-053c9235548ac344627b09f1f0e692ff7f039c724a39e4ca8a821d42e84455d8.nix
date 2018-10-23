{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "minimorph";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eric.kow@gmail.com";
      author = "Eric Kow";
      homepage = "http://darcsden.com/kowey/minimorph";
      url = "";
      synopsis = "English spelling functions with an emphasis on simplicity.";
      description = "A set of simplistic functions capturing the more regular\nparts of English spelling (for generation, not parsing).\nYou will need to complement this with some account for\nirregular nouns/verbs. This package is not meant to provide\nanything resembling a full account of English morphology\n(something like Functional Morphology or sequor could be\nbetter suited).  The main goal is to provide something cheap\nand cheerful with no learning curve, that you can use until\nyour application calls for more robustness.";
      buildType = "Simple";
    };
    components = {
      "minimorph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test-minimorph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.minimorph)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }