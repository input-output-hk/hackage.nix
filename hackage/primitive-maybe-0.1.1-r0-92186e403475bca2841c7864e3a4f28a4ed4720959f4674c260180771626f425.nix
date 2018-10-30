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
      specVersion = "2.0";
      identifier = {
        name = "primitive-maybe";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/primitive-maybe#readme";
      url = "";
      synopsis = "Arrays of Maybes";
      description = "This library provides types for working with arrays of @Maybe@\nvalues. The types in this library can be used as replacements\nfor @Array (Maybe a)@ and @SmallArray (Maybe a)@ that consume\nless memory and have fewer indirections.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.primitive-maybe)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tagged)
            (hsPkgs.quickcheck-classes)
          ];
        };
      };
    };
  }