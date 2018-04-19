{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uniform-pair";
          version = "0.1.13";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "https://github.com/conal/uniform-pair/";
        url = "";
        synopsis = "Uniform pairs with class instances";
        description = "Uniform pairs with class instances\n\n@\ndata Pair a = a :# a\n@";
        buildType = "Simple";
      };
      components = {
        uniform-pair = {
          depends  = [
            hsPkgs.base
            hsPkgs.prelude-extras
            hsPkgs.deepseq
          ] ++ pkgs.lib.optionals (!compiler.isGhc) [
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ];
        };
      };
    }