{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "hinterface"; version = "0.8.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Timo Koepke, Sven Heyll";
      maintainer = "timo.koepke@googlemail.com, sven.heyll@gmail.com";
      author = "Timo Koepke, Sven Heyll";
      homepage = "https://github.com/lindenbaum/hinterface";
      url = "";
      synopsis = "Haskell / Erlang interoperability library";
      description = "A library for building nodes of a distributed Erlang system in Haskell.\nNodes can be created and registered to an epmd, Erlang terms can be\nmarshalled to/from Erlangs binary term representation and message can\nbe sent to or received from processes running on a different node.\nIn it's preliminary state hinterface supports of Erlangs binary terms\nand a subset of the distribution protocol.";
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
          (hsPkgs.deepseq)
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
            (hsPkgs.vector)
            ];
          };
        };
      };
    }