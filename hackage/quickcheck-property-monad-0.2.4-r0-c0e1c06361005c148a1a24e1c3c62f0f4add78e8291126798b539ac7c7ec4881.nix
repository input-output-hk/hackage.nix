{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { tests = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "quickcheck-property-monad";
        version = "0.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2015 Benno Fünfstück";
      maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
      author = "Benno Fünfstück";
      homepage = "http://github.com/bennofs/quickcheck-property-monad/";
      url = "";
      synopsis = "A monad for generating QuickCheck properties without Arbitrary instances.";
      description = "When your data has many invariants, it's often difficult to write Arbitrary\ninstances for QuickCheck. This library attempts to solve that\nproblem by providing a nice interface to write QuickCheck tests without using\nArbitrary instances. It aims to be somewhere in the middle between\nHUnit and QuickCheck: Use the random test case generation of QuickCheck, but write\nHUnit like assertions.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ] ++ pkgs.lib.optional (flags.tests) (hsPkgs.QuickCheck);
        };
      };
    };
  }