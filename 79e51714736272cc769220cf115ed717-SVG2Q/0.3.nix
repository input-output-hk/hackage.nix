{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SVG2Q";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jan Greve";
        author = "Jan Greve";
        homepage = "http://www.informatik.uni-kiel.de/~jgr/svg2q";
        url = "";
        synopsis = "Code generation tool for Quartz code from a SVG.";
        description = "svg2q will generate a Objective C Class from a SVG file which shows the SVG. The Class offers methods to set attributes of those SVG elements that have ids.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "svg2q" = {
            depends  = [
              hsPkgs.base
              hsPkgs.svgutils
              hsPkgs.language-c
              hsPkgs.xml
              hsPkgs.haskell98
              hsPkgs.syb
              hsPkgs.pretty
            ];
          };
        };
      };
    }