{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "heckle";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "2016rshah@gmail.com";
        author = "Rushi Shah";
        homepage = "";
        url = "";
        synopsis = "Jekyll in Haskell";
        description = "Lightweight static site compiler for markdown posts";
        buildType = "Simple";
      };
      components = {
        exes = {
          "heckle" = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.process
              hsPkgs.split
              hsPkgs.tagsoup
            ];
          };
        };
      };
    }