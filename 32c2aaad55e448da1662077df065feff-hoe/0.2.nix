{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hoe";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010 Hideyuki Tanaka";
        maintainer = "tanaka.hideyuki@gmail.com";
        author = "Hideyuki Tanaka";
        homepage = "http://github.com/tanakh/hoe";
        url = "";
        synopsis = "Haskell One-liner Evaluator";
        description = "@hoe@ is a Haskell one-liner evaluator.\nIt can evaluate a script in various ways depending on it's type.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hoe = {
            depends  = [
              hsPkgs.base
              hsPkgs.hint
              hsPkgs.mtl
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }