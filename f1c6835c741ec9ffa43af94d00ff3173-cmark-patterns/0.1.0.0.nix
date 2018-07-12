{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cmark-patterns";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yom@artyom.me";
        author = "Artyom";
        homepage = "http://github.com/aelve/cmark-patterns";
        url = "";
        synopsis = "Pattern synonyms for cmark";
        description = "Pattern synonyms for building and deconstructing cmark AST.";
        buildType = "Simple";
      };
      components = {
        "cmark-patterns" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cmark
          ];
        };
      };
    }