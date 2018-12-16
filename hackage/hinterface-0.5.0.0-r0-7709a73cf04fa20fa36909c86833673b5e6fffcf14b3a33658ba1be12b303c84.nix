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
      specVersion = "1.10";
      identifier = {
        name = "hinterface";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Timo Koepke, Sven Heyll";
      maintainer = "timo.koepke@googlemail.com, sven.heyll@gmail.com";
      author = "Timo Koepke, Sven Heyll";
      homepage = "https://github.com/LTI2000/hinterface";
      url = "";
      synopsis = "Haskell / Erlang interoperability library";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.exceptions)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.memory)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.safe-exceptions)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hinterface-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.hinterface)
            (hsPkgs.hspec)
            (hsPkgs.monad-logger)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }