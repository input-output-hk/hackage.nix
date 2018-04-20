{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "references";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nboldi@elte.hu";
        author = "Boldizsar Nemeth";
        homepage = "https://github.com/lazac/references";
        url = "";
        synopsis = "Generalization of lenses, folds and traversals for haskell";
        description = "Similar to lenses, references provide access to part of a structure or a different\nview on the structure. References are considered to be a generalization of those,\nbut the come with a different representation. The main purpose of references is to\nhave accessors that can cooperate with monads, especially IO.";
        buildType = "Simple";
      };
      components = {
        references = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.lens
            hsPkgs.template-haskell
          ];
        };
      };
    }