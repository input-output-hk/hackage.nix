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
      specVersion = "1.8.0.2";
      identifier = {
        name = "prefix-units";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, 2014, 2015 Google Inc.";
      maintainer = "Iustin Pop <iustin@google.com>";
      author = "Iustin Pop <iustin@google.com>";
      homepage = "https://github.com/iustin/prefix-units";
      url = "";
      synopsis = "A basic library for SI/binary prefix units";
      description = "This library deals with parsing values containing \\\"prefix units\\\"\n(both binary and SI). For example, it can parse 10M and 1G, and it\ncan also format values for displaying with the \\\"optimal\\\" unit.\nFor more details, see the man page units(7),\n<http://physics.nist.gov/cuu/Units/prefixes.html> and\n<http://physics.nist.gov/cuu/Units/binary.html>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      tests = {
        "test-units" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.prefix-units)
          ];
        };
      };
    };
  }