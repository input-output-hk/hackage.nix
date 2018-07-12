{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tokenizer-monad";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2017, 2018 Marvin Cohrs";
        maintainer = "darcs@m.doomanddarkness.eu";
        author = "Marvin Cohrs";
        homepage = "";
        url = "";
        synopsis = "An efficient and easy-to-use tokenizer monad.";
        description = "This monad can be used for writing efficient and readable tokenizers.";
        buildType = "Simple";
      };
      components = {
        "tokenizer-monad" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }