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
        name = "hapstone";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Inokentiy Babushkin";
      maintainer = "inokentiy.babushkin@googlemail.com";
      author = "Inokentiy Babushkin";
      homepage = "http://github.com/ibabushkin/hapstone";
      url = "";
      synopsis = "Capstone bindings for Haskell";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = [ (pkgs."capstone") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "hapstone-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hapstone)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }