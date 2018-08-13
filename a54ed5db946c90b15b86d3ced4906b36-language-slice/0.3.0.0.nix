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
      specVersion = "1.8";
      identifier = {
        name = "language-slice";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Paul Koerbitz 2013";
      maintainer = "paul.koerbitz@gmail.com";
      author = "Paul Koerbitz";
      homepage = "https://github.com/paulkoerbitz/language-slice";
      url = "";
      synopsis = "AST and parser for the ZeroC Slice language (Specification language for ICE)";
      description = "AST and parser for the ZeroC Slice language (Specification language for ICE)";
      buildType = "Simple";
    };
    components = {
      "language-slice" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "test-parser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.bytestring)
            (hsPkgs.parsec)
            (hsPkgs.transformers)
            (hsPkgs.language-slice)
          ];
        };
      };
    };
  }