{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "messagepack";
        version = "0.5.3";
      };
      license = "MIT";
      copyright = "(c) 2014 Rodrigo Setti";
      maintainer = "rodrigosetti@gmail.com";
      author = "Rodrigo Setti";
      homepage = "https://github.com/rodrigosetti/messagepack";
      url = "https://github.com/rodrigosetti/messagepack/archive/master.zip";
      synopsis = "Serialize instance for Message Pack Object";
      description = "Serialize instance for Message Pack Object";
      buildType = "Simple";
    };
    components = {
      "messagepack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "messagepack-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.messagepack)
          ];
        };
      };
    };
  }