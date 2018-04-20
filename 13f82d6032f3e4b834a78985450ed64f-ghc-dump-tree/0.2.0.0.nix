{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-dump-tree";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2015 Well-Typed LLP";
        maintainer = "edsko@well-typed.com";
        author = "Edsko de Vries";
        homepage = "https://github.com/edsko/ghc-dump-tree";
        url = "";
        synopsis = "Dump GHC's parsed, renamed, and type checked ASTs";
        description = "Useful for GHC devs or people who want to do something with\nGHC's AST but don't want to hook into the GHC API itself.";
        buildType = "Simple";
      };
      components = {
        ghc-dump-tree = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.ghc
            hsPkgs.pretty
            hsPkgs.pretty-show
            hsPkgs.process
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          ghc-dump-tree = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.ghc
              hsPkgs.optparse-applicative
              hsPkgs.pretty
              hsPkgs.pretty-show
              hsPkgs.process
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.ghc-dump-tree
            ];
          };
        };
      };
    }