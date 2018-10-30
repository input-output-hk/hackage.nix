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
        name = "parsec-permutation";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Bitbase, LLC";
      maintainer = "samuel@hoffstaetter.com";
      author = "Samuel Hoffstaetter";
      homepage = "";
      url = "";
      synopsis = "Applicative permutation parser for Parsec intended as\na replacement for Text.Parsec.Perm.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.parsec-permutation)
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }