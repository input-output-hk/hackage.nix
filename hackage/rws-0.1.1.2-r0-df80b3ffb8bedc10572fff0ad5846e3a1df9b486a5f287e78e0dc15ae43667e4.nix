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
        name = "rws";
        version = "0.1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "karl.knutsson@proceranetworks.com";
      author = "Karl Knutsson";
      homepage = "https://github.com/karknu/rws";
      url = "";
      synopsis = "Packet Generation";
      description = "Generate pcaps from a simple packet description language";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rws" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.parsec)
          ];
        };
      };
      tests = {
        "test-qt" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.parsec)
            (hsPkgs.test-framework)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }