{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "subtitleParser";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ruben Astudillo  <ruben.astud@gmail.com>";
        author = "Ruben Astudillo  <ruben.astud@gmail.com>";
        homepage = "https://patch-tag.com/r/rubenAst/subtitleParser/home";
        url = "";
        synopsis = "A parser for .srt and .sub files";
        description = "A basic .srt and .sub parser based on attoparsec and text";
        buildType = "Simple";
      };
      components = {
        subtitleParser = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.attoparsec
          ];
        };
      };
    }