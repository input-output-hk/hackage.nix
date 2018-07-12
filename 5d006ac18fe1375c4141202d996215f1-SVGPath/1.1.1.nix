{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SVGPath";
          version = "1.1.1";
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
        "SVGPath" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }