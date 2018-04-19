{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-logger";
          version = "0.0.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "";
        homepage = "https://github.com/agrafix/simple-logger#readme";
        url = "";
        synopsis = "A very simple but efficient logging framework";
        description = "A very simple but efficient logging framework";
        buildType = "Simple";
      };
      components = {
        simple-logger = {
          depends  = [
            hsPkgs.base
            hsPkgs.fast-logger
            hsPkgs.text
            hsPkgs.mtl
          ];
        };
      };
    }