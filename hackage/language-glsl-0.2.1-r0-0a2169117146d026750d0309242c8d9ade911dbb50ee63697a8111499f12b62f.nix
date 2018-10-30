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
        name = "language-glsl";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "noteed@gmail.com";
      author = "Vo Minh Thu";
      homepage = "";
      url = "";
      synopsis = "GLSL abstract syntax tree, parser, and pretty-printer";
      description = "The package language-glsl is a Haskell library for the\nrepresentation, the parsing, and the pretty-printing of\nGLSL 1.50 code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.prettyclass)
        ];
      };
      exes = {
        "glsl-pprint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.language-glsl)
            (hsPkgs.parsec)
            (hsPkgs.prettyclass)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.language-glsl)
            (hsPkgs.parsec)
            (hsPkgs.prettyclass)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }