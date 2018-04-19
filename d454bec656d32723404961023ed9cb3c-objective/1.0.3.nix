{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "objective";
          version = "1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/objective";
        url = "";
        synopsis = "Extensible objects";
        description = "Stateful effect transducer";
        buildType = "Simple";
      };
      components = {
        objective = {
          depends  = [
            hsPkgs.base
            hsPkgs.either
            hsPkgs.exceptions
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.transformers
            hsPkgs.free
            hsPkgs.hashable
            hsPkgs.profunctors
            hsPkgs.void
            hsPkgs.witherable
            hsPkgs.stm
            hsPkgs.monad-stm
          ];
        };
      };
    }