{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "elm-hybrid";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Paramander";
        maintainer = "mats@paramander.com";
        author = "Paramander";
        homepage = "https://gitlab.com/paramander/elm-hybrid";
        url = "";
        synopsis = "Combine Elm with Haskell for data based applications";
        description = "Generate your basic elm types based on Haskell data";
        buildType = "Simple";
      };
      components = {
        elm-hybrid = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.time
            hsPkgs.split
            hsPkgs.filepath
            hsPkgs.directory
          ];
        };
        tests = {
          elm-hybrid-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.elm-hybrid
            ];
          };
        };
      };
    }