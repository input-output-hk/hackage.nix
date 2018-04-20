{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "JuicyPixels-util";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012-2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/JuicyPixels-util";
        url = "";
        synopsis = "Convert JuicyPixel images into RGBA format, flip, trim and so on";
        description = "";
        buildType = "Simple";
      };
      components = {
        JuicyPixels-util = {
          depends  = [
            hsPkgs.base
            hsPkgs.JuicyPixels
            hsPkgs.vector
          ];
        };
      };
    }