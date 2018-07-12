{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug-typed-queries = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "typedquery";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "©2014-2015 Marcin Tolysz";
        maintainer = "tolysz@gmail.com";
        author = "Marcin Tolysz";
        homepage = "https://github.com/tolysz/typedquery";
        url = "";
        synopsis = "Parser for SQL augmented with types";
        description = "Base package for parsing queries";
        buildType = "Simple";
      };
      components = {
        "typedquery" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
            hsPkgs.parsec
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
          ] ++ pkgs.lib.optionals _flags.debug-typed-queries [
            hsPkgs.rawstring-qm
            hsPkgs.haskell-src-exts
          ];
        };
      };
    }