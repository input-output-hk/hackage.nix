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
        name = "zeromq4-clone-pattern";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Henri Verroken";
      maintainer = "henriverroken@gmail.com";
      author = "Henri Verroken";
      homepage = "https://github.com/hverr/zeromq4-clone-pattern#readme";
      url = "";
      synopsis = "Haskell implementation of the ZeroMQ clone pattern.";
      description = "Haskell implementation of the ZeroMQ Reliable Pub-Sub (Clone) pattern.\n\nDEPRECATED BY https://hackage.haskell.org/package/zeromq4-patterns";
      buildType = "Simple";
    };
    components = {
      "zeromq4-clone-pattern" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.zeromq4-haskell)
        ];
      };
      exes = {
        "zeromq4-clone-pattern-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.zeromq4-clone-pattern)
          ];
        };
      };
      tests = {
        "zeromq4-clone-pattern-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.zeromq4-clone-pattern)
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }