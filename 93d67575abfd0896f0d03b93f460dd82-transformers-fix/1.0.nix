{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "transformers-fix";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Ambiata.";
        maintainer = "Tim Humphries <tim@utf8.me>";
        author = "Amos Robinson";
        homepage = "https://github.com/thumphries/transformers-fix";
        url = "";
        synopsis = "Monad transformer for evaluating to a fixpoint";
        description = "Monad transformer for evaluating to a fixpoint.";
        buildType = "Simple";
      };
      components = {
        "transformers-fix" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }