{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-html";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "j@dannyavarro.net, roma@ro-che.info";
        author = "Danny Navarro, Roman Cheplyaka, Chris Catalfo";
        homepage = "http://github.com/feuerbach/tasty-html";
        url = "";
        synopsis = "Render tasty output to HTML";
        description = "A tasty ingredient to output test results in HTML5.";
        buildType = "Simple";
      };
      components = {
        tasty-html = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.generic-deriving
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.tagged
            hsPkgs.tasty
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.blaze-html
          ];
        };
      };
    }