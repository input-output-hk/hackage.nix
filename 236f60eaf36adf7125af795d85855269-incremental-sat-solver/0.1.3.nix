{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "incremental-sat-solver";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sebf@informatik.uni-kiel.de";
        author = "Sebastian Fischer";
        homepage = "http://github.com/sebfisch/incremental-sat-solver";
        url = "";
        synopsis = "Simple, Incremental SAT Solving as a Library";
        description = "This Haskell library provides an implementation of the\nDavis-Putnam-Logemann-Loveland algorithm\n(cf. <http://en.wikipedia.org/wiki/DPLL_algorithm>) for\nthe boolean satisfiability problem. It not only allows\nto solve boolean formulas in one go but also to add\nconstraints and query bindings of variables\nincrementally.";
        buildType = "Simple";
      };
      components = {
        incremental-sat-solver = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }