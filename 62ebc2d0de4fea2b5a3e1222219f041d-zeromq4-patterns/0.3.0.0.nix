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
        name = "zeromq4-patterns";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Henri Verroken";
      maintainer = "henriverroken@gmail.com";
      author = "Henri Verroken";
      homepage = "https://github.com/hverr/zeromq4-patterns#readme";
      url = "";
      synopsis = "Haskell implementation of several ZeroMQ patterns.";
      description = "Haskell implementation of several ZeroMQ patterns that you can find in the\nofficial ZeroMQ guide.";
      buildType = "Simple";
    };
    components = {
      "zeromq4-patterns" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.stm)
          (hsPkgs.zeromq4-haskell)
        ];
      };
      exes = {
        "zeromq4-patterns-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.zeromq4-patterns)
          ];
        };
      };
      tests = {
        "zeromq4-patterns-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.zeromq4-patterns)
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