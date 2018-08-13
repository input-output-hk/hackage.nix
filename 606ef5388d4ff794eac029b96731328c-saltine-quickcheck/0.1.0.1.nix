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
      specVersion = "1.10";
      identifier = {
        name = "saltine-quickcheck";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tsuraan@gmail.com";
      author = "Jay Groven";
      homepage = "https://github.com/tsuraan/saltine-quickcheck";
      url = "";
      synopsis = "Quickcheck implementations for some NaCl data";
      description = "";
      buildType = "Simple";
    };
    components = {
      "saltine-quickcheck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-arbitrary)
          (hsPkgs.hex)
          (hsPkgs.QuickCheck)
          (hsPkgs.saltine)
        ];
        libs = [ (pkgs.sodium) ];
      };
      tests = {
        "test-all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring-arbitrary)
            (hsPkgs.QuickCheck)
            (hsPkgs.saltine)
            (hsPkgs.saltine-quickcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }