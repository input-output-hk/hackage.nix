{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "objective";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/objective";
        url = "";
        synopsis = "Composable objects";
        description = "Composable objects";
        buildType = "Simple";
      };
      components = {
        "objective" = {
          depends  = [
            hsPkgs.base
            hsPkgs.either
            hsPkgs.exceptions
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.free
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.profunctors
            hsPkgs.void
            hsPkgs.witherable
            hsPkgs.monad-skeleton
            hsPkgs.template-haskell
          ];
        };
      };
    }