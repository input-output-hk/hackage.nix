{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build_doc = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hlatex";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Nicolas Pouillard";
        maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
        author = "Nicolas Pouillard";
        homepage = "";
        url = "";
        synopsis = "A library to build valid LaTeX files";
        description = "...";
        buildType = "Simple";
      };
      components = {
        hlatex = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.base-unicode-symbols
            hsPkgs.uniplate
            hsPkgs.derive
            hsPkgs.utf8-string
          ];
        };
        exes = {
          generate_hlatex_user_guide = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.frquotes
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.base-unicode-symbols
            ];
          };
        };
      };
    }