{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "juicy-gcode";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dlacko@gmail.com";
        author = "dlacko";
        homepage = "https://github.com/domoszlai/juicy-gcode";
        url = "";
        synopsis = "SVG to G-Code converter";
        description = "SVG to G-code converter that aims to support almost all of the SVG features. It currently supports all of the shapes except images (not planned) and text (maybe once as you it can be converted to curves easily anyway). The flavor of the generated G-Code can be configured providing a configuration file.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "juicy-gcode" = {
            depends  = [
              hsPkgs.base
              hsPkgs.svg-tree
              hsPkgs.matrix
              hsPkgs.text
              hsPkgs.configurator
              hsPkgs.optparse-applicative
              hsPkgs.linear
              hsPkgs.lens
            ];
          };
        };
      };
    }