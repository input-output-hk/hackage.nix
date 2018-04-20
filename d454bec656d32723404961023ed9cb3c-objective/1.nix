{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "objective";
          version = "1";
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
            hsPkgs.containers
            hsPkgs.free
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.profunctors
            hsPkgs.either
            hsPkgs.void
            hsPkgs.witherable
            hsPkgs.transformers
          ];
        };
      };
    }