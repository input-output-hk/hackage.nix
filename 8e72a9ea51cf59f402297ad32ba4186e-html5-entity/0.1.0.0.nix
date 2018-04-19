{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "html5-entity";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Konstantin Zudov, 2015";
        maintainer = "konstantin@anche.no";
        author = "Konstantin Zudov";
        homepage = "https://github.com/zudov/html5-entity/";
        url = "";
        synopsis = "A library for looking up and validating HTML5 entities.";
        description = "A library for looking up and validating HTML5 entities.\nThe <http://html.spec.whatwg.org/multipage/entities.json following>\ndocument is used as an authoritative source of the valid\nentity names and their corresponding codepoints.\nYou can think of this library as about bindings to the data\nfrom that file. For usage see the 'Text.Html5.Entity'\nmodule.";
        buildType = "Simple";
      };
      components = {
        html5-entity = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.containers
          ];
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.html5-entity
              hsPkgs.criterion
            ];
          };
        };
      };
    }