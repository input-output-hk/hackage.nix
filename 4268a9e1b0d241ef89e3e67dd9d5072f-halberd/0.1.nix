{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "halberd";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hesselink@gmail.com";
        author = "Erik Hesselink, Simon Meier, Tom Lokhorst, Roman Cheplyaka";
        homepage = "http://github.com/haskell-suite/halberd/";
        url = "";
        synopsis = "A tool to generate missing import statements for Haskell modules.";
        description = "This tool uses <https://github.com/haskell-suite\nthe Haskell Suite> to determine the unbound\nvariables and types in your source code, and\ngenerate import statements for them. If there are\nmultiple choices, it provides a simple\ninteractive menu for you to choose from. See the\nhome page for more details.";
        buildType = "Simple";
      };
      components = {
        exes = {
          halberd = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.haskell-packages
              hsPkgs.haskell-names
              hsPkgs.haskell-src-exts
              hsPkgs.Cabal
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.tagged
              hsPkgs.safe
              hsPkgs.syb
            ];
          };
        };
      };
    }