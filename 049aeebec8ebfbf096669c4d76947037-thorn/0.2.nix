{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "thorn";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Yusuke Matsushita";
        maintainer = "Yusuke Matsushita <y.skm24t@gmail.com>";
        author = "Yusuke Matsushita";
        homepage = "https://github.com/Kinokkory/Thorn";
        url = "";
        synopsis = "Datatype Manipulation with Template Haskell";
        description = "Thorn generates\n\n* functors from various kinds of datatypes, regardless of arity or variances.\n\n* folds and unfolds from various kinds of recursive datatypes, including mutually recursive ones.\n\nA single function of Thorn will give you a lot. Just try it.";
        buildType = "Simple";
      };
      components = {
        thorn = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.bifunctors
            hsPkgs.profunctors
          ];
        };
      };
    }