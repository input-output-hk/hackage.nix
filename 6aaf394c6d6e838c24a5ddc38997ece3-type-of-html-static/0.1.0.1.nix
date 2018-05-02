{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "type-of-html-static";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018, Florian Knupfer";
        maintainer = "fknupfer@gmail.com";
        author = "Florian Knupfer";
        homepage = "https://github.com/knupfer/type-of-html-static";
        url = "";
        synopsis = "Optimize static parts of type-of-html.";
        description = "This library provides the TH-function 'static' to annote which parts of your page are static to dramatically increase performance.\nIt converts and escapes it's argument at compiletime and lifts it to a Proxy Symbol to avoid even appending of Builder.";
        buildType = "Simple";
      };
      components = {
        type-of-html-static = {
          depends  = [
            hsPkgs.base
            hsPkgs.type-of-html
            hsPkgs.template-haskell
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.type-of-html
              hsPkgs.type-of-html-static
            ];
          };
        };
      };
    }