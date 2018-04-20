{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Haschoo";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Matti Niemenmaa <matti.niemenmaa+haschoo@iki.fi>";
        author = "Matti Niemenmaa";
        homepage = "http://iki.fi/matti.niemenmaa/misc-projects.html#haschoo";
        url = "";
        synopsis = "Minimalist R5RS Scheme interpreter";
        description = "Haschoo is a minimalist R5RS interpreter written in Haskell for a university\ncourse.";
        buildType = "Simple";
      };
      components = {
        exes = {
          haschoo = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.list-tries
              hsPkgs.numbers
              hsPkgs.monad-loops
              hsPkgs.parsec
            ];
          };
        };
      };
    }