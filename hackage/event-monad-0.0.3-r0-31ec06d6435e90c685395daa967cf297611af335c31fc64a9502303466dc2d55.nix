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
      specVersion = "1.2";
      identifier = {
        name = "event-monad";
        version = "0.0.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/event-monad";
      url = "";
      synopsis = "Event-graph simulation monad transformer";
      description = "An interface for and simple implementation of an\nevent-graph simulation system as a monad transformer,\nas well as a version using mutable state references\nfor performance and for concurrency support.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.event-handlers)
          (hsPkgs.haskell98)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.prettyclass)
          (hsPkgs.priority-queue)
          (hsPkgs.stateref)
        ];
      };
    };
  }