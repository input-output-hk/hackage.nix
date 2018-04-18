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
          version = "0.4.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "roma@ro-che.info";
        author = "Roman Cheplyaka";
        homepage = "";
        url = "";
        synopsis = "Modern and extensible testing framework";
        description = "See <http://documentup.com/feuerbach/tasty>";
        buildType = "Simple";
      };
      components = {
        tasty = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.tagged
            hsPkgs.regex-posix
            hsPkgs.optparse-applicative
            hsPkgs.deepseq
          ] ++ pkgs.lib.optional _flags.colors hsPkgs.ansi-terminal;
        };
      };
    }