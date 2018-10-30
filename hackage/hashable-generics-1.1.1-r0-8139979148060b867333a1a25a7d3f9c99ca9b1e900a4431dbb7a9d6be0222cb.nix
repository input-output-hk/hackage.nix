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
        name = "hashable-generics";
        version = "1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2012, Clark Gaebel";
      maintainer = "cgaebel@uwaterloo.ca";
      author = "Clark Gaebel";
      homepage = "https//github.com/wowus/hashable-generics";
      url = "";
      synopsis = "Automatically generates Hashable instances with GHC.Generics.";
      description = "This package provides a \"GHC.Generics\"-based 'Data.Hashable.Generic.gHashWithSalt'\nfunction which can be used for providing a 'hashWithSalt' implementation.\nSee the documentation for the 'gHashWithSalt' function in the\n\"Data.Hashable.Generic\" module to get start.\n\nThis package is heavily inspired by deepseq-generics, which you may also find\nuseful.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hashable)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.hashable-generics)
          ];
        };
      };
    };
  }