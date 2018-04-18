{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "heterocephalus";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "2016 Kadzuya Okamoto";
        maintainer = "arow.okamoto+github@gmail.com";
        author = "Kadzuya Okamoto";
        homepage = "https://github.com/arowM/heterocephalus#readme";
        url = "";
        synopsis = "A flexible and type safe template engine for Haskell.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        heterocephalus = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.shakespeare
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
        tests = {
          heterocephalus-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.heterocephalus
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.doctest
              hsPkgs.heterocephalus
            ];
          };
        };
      };
    }