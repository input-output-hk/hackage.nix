{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Slides";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "lukahorvat9@gmail.com";
        author = "Luka Horvat";
        homepage = "";
        url = "";
        synopsis = "Generate slides from Haskell code";
        description = "Make presentations in Haskell with diagrams";
        buildType = "Simple";
      };
      components = {
        Slides = {
          depends  = [
            hsPkgs.base
            hsPkgs.diagrams-svg
            hsPkgs.colour
            hsPkgs.file-embed
            hsPkgs.regexpr
            hsPkgs.utf8-string
            hsPkgs.diagrams-lib
          ];
        };
      };
    }