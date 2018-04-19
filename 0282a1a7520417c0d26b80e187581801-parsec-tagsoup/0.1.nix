{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "parsec-tagsoup";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Jose Iborra";
        homepage = "";
        url = "";
        synopsis = "Parsec parsers for Tagsoup tag streams";
        description = "This package provides a Tag token parser, as well as Tag specific parsing combinators.";
        buildType = "Simple";
      };
      components = {
        parsec-tagsoup = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagsoup
            hsPkgs.parsec
          ];
        };
      };
    }