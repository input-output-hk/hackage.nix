{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = {
        name = "transactional-events";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Ryan Ingram";
      maintainer = "Ryan Ingram <ryani.spam@gmail.com>";
      author = "Ryan Ingram <ryani.spam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Transactional events, based on Concurrent ML semantics";
      description = "A quick-and-dirty implementation of transactional events.\nMatthew Fluet's version\n(\"http://ttic.uchicago.edu/~fluet/research/tx-events/\")\nis probably a better implmentation, but this is an\ninteresting start for a technique to experiment with.";
      buildType = "Simple";
    };
    components = {
      "transactional-events" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.MonadPrompt)
          (hsPkgs.ListZipper)
        ];
      };
    };
  }