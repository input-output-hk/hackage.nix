{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      colors = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty";
          version = "0.8.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "roma@ro-che.info";
        author = "Roman Cheplyaka";
        homepage = "http://documentup.com/feuerbach/tasty";
        url = "";
        synopsis = "Modern and extensible testing framework";
        description = "See <http://documentup.com/feuerbach/tasty>";
        buildType = "Simple";
      };
      components = {
        tasty = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.tagged
            hsPkgs.regex-tdfa
            hsPkgs.optparse-applicative
            hsPkgs.deepseq
            hsPkgs.unbounded-delays
            hsPkgs.async
            hsPkgs.ansi-terminal
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }