{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "boxes";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eelis van der Weegen <boxes@contacts.eelis.net>";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "2D text pretty-printing library";
        description = "A pretty-printing library for laying out text in\ntwo dimensions, using a simple box model.";
        buildType = "Simple";
      };
      components = {
        boxes = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
          ];
        };
      };
    }