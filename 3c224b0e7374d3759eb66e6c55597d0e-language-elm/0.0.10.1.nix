{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-elm";
          version = "0.0.10.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Elias Lawson-Fox";
        maintainer = "eliaslfox@gmail.com";
        author = "Elias Lawson-Fox";
        homepage = "https://github.com/eliaslfox/language-elm#readme";
        url = "";
        synopsis = "Generate elm code";
        description = "Generate elm code from an ast";
        buildType = "Simple";
      };
      components = {
        language-elm = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.MissingH
          ];
        };
        tests = {
          language-elm-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-elm
              hsPkgs.HUnit
              hsPkgs.pretty
            ];
          };
        };
      };
    }