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
        name = "conduit-concurrent-map";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "2017 Niklas Hambüchen <mail@nh2.me>";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/nh2/conduit-concurrent-map";
      url = "";
      synopsis = "Concurrent, order-preserving mapping Conduit";
      description = "Provides a @Conduit@ that maps a function concurrently over incoming elements, maintaining input order.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.conduit-concurrent-map)
            (hsPkgs.conduit)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.say)
          ];
        };
      };
    };
  }