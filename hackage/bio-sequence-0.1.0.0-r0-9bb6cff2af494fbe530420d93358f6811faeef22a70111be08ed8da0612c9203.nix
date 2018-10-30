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
        name = "bio-sequence";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Biocad";
      maintainer = "yakovlev@biocad.ru";
      author = "Pavel Yakovlev";
      homepage = "https://github.com/biocad/bio-sequence";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "sequence-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bio-sequence)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
        "similarity" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bio-sequence)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }