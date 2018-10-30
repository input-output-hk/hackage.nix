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
        name = "binary-conduit";
        version = "1.2.5";
      };
      license = "MIT";
      copyright = "2013 Alexander Vershilov";
      maintainer = "alexander.vershilov@gmail.com";
      author = "Alexander Vershilov";
      homepage = "http://github.com/qnikst/binary-conduit/";
      url = "";
      synopsis = "data serialization/deserialization conduit library";
      description = "The binary-conduit package.\nAllow binary serialization using iterative conduit interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.vector)
          (hsPkgs.resourcet)
        ];
      };
      tests = {
        "test-binary-conduit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-assertions)
            (hsPkgs.binary-conduit)
            (hsPkgs.hspec)
            (hsPkgs.conduit)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.resourcet)
          ];
        };
      };
    };
  }