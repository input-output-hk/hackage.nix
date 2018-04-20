{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "trivia";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fumiexcel@gmail.com";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/trivia";
        url = "";
        synopsis = "The trivial monad and comonad";
        description = "";
        buildType = "Simple";
      };
      components = {
        trivia = {
          depends  = [
            hsPkgs.base
            hsPkgs.distributive
            hsPkgs.comonad
          ];
        };
      };
    }