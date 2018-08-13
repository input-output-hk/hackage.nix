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
      specVersion = "1.4";
      identifier = {
        name = "quicktest";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "djsiegel@gmail.com";
      author = "David Siegel";
      homepage = "https://github.com/davidsiegel/quicktest";
      url = "";
      synopsis = "A reflective batch tester for Haskell.";
      description = "QuickTest inspects Haskell source files for unit tests, and runs all tests found through GHCi with a dynamically generated test harness. This means you can simply write properties about your code, and QuickTest will test these properties en masse using QuickCheck. QuickTest is based on quickcheck-script by Koen Claessen and John Hughes.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "quicktest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }