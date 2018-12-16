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
        name = "quickcheck-enum-instances";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/quickcheck-enum-instances";
      url = "";
      synopsis = "arbitrary instances for small enum types";
      description = "Instances of the `Arbitrary` typeclass for all of the types\nin `enum-types`. These are orphan instances, so this should\nonly be used in test suites.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.enum-types)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }