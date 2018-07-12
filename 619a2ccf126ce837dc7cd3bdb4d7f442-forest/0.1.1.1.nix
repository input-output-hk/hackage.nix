{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "forest";
          version = "0.1.1.1";
        };
        license = "MPL-2.0";
        copyright = "";
        maintainer = "me@shane.sh";
        author = "Shane O'Brien";
        homepage = "https://github.com/duairc/forest";
        url = "";
        synopsis = "Tree and Forest types";
        description = "Tree and Forest types, where the leafs and branches of a tree can store\ndifferent types of data, and forests are parameterised by an arbitrary\nfunctor (usually @[]@, but sometimes you might want @NonEmpty@ for example).";
        buildType = "Simple";
      };
      components = {
        "forest" = {
          depends  = (([
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.profunctors
            hsPkgs.semigroupoids
            hsPkgs.base
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8") [
            hsPkgs.semigroups
            hsPkgs.transformers
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.2") hsPkgs.bifunctors) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.2" && compiler.version.lt "7.6")) hsPkgs.ghc-prim;
        };
      };
    }