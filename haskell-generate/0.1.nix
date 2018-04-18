{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-generate";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Benno Fünfstück";
        maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
        author = "Benno Fünfstück";
        homepage = "http://github.com/bennofs/haskell-generate/";
        url = "";
        synopsis = "haskell-generate";
        description = "haskell-generate";
        buildType = "Custom";
      };
      components = {
        haskell-generate = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.haskell-src-exts
            hsPkgs.containers
            hsPkgs.template-haskell
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }