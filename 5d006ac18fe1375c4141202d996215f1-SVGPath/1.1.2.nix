{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SVGPath";
          version = "1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tillk.vogt@googlemail.com";
        author = "Tillmann Vogt";
        homepage = "";
        url = "";
        synopsis = "Parsing the path command of SVG";
        description = "Parsing the path command of SVG";
        buildType = "Simple";
      };
      components = {
        SVGPath = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }