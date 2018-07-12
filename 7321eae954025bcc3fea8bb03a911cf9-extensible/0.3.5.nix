{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "extensible";
          version = "0.3.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/extensible";
        url = "";
        synopsis = "Extensible, efficient, lens-friendly data types";
        description = "Combinators and types for extensible product and sum";
        buildType = "Simple";
      };
      components = {
        "extensible" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.constraints
            hsPkgs.profunctors
            hsPkgs.tagged
            hsPkgs.transformers
            hsPkgs.monad-skeleton
          ];
        };
      };
    }