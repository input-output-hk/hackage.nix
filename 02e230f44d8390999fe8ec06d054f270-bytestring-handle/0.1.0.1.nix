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
      specVersion = "1.8";
      identifier = {
        name = "bytestring-handle";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ganesh Sittampalam <ganesh@earth.li>";
      author = "Ganesh Sittampalam";
      homepage = "http://hub.darcs.net/ganesh/bytestring-handle";
      url = "";
      synopsis = "ByteString-backed Handles";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bytestring-handle" = {
        depends  = [
          (hsPkgs.bytestring)
          (hsPkgs.base)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.bytestring-handle)
          ];
        };
      };
    };
  }