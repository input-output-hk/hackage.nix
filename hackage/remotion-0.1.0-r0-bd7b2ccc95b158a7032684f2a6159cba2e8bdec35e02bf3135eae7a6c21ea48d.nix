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
        name = "remotion";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/remotion";
      url = "";
      synopsis = "A library for client-server applications based on custom protocols";
      description = "An API abstracting over the typical tasks of client-server communication.\nIt automates the authentication process, failure management and\nthe task of keeping the connections alive.\nIt allows the user to implement protocols of any form.\nUseful for writing all kinds of services.\nE.g., a <http://hackage.haskell.org/package/graph-db graph-db>\nnetworking interface is based on this library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.pipes)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-cereal-plus)
          (hsPkgs.pipes-parse)
          (hsPkgs.network)
          (hsPkgs.network-simple)
          (hsPkgs.pipes-network)
          (hsPkgs.filelock)
          (hsPkgs.directory)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.lifted-async)
          (hsPkgs.async)
          (hsPkgs.concurrent-extra)
          (hsPkgs.stm)
          (hsPkgs.hashtables)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
          (hsPkgs.errors)
          (hsPkgs.mtl)
          (hsPkgs.base)
        ];
      };
      tests = {
        "remotion-htf-test-suite" = {
          depends  = [
            (hsPkgs.remotion)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck-GenT)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.HTF)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-cereal-plus)
            (hsPkgs.pipes-parse)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.pipes-network)
            (hsPkgs.filelock)
            (hsPkgs.directory)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.lifted-async)
            (hsPkgs.async)
            (hsPkgs.concurrent-extra)
            (hsPkgs.stm)
            (hsPkgs.hashtables)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.transformers-base)
            (hsPkgs.monad-control)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.errors)
            (hsPkgs.mtl)
            (hsPkgs.base)
          ];
        };
      };
    };
  }