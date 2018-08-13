{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "bv";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012-2014 Iago Abal";
      maintainer = "Iago Abal <mail@iagoabal.eu>";
      author = "Iago Abal <mail@iagoabal.eu>";
      homepage = "http://bitbucket.org/iago/bv-haskell";
      url = "";
      synopsis = "Bit-vector arithmetic library";
      description = "Bit-vectors implemented as a wrapper over integers.";
      buildType = "Simple";
    };
    components = {
      "bv" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "bv-tester" = {
          depends  = pkgs.lib.optionals (_flags.test) [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
          ];
        };
      };
    };
  }