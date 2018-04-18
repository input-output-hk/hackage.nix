{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "interchangeable";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "arow.okamoto@gmail.com";
        author = "Kadzuya OKAMOTO";
        homepage = "https://github.com/arowM/interchangeable";
        url = "";
        synopsis = "A type class for interchangeable data.";
        description = "Library to use class 'Interchangeable' for interchangeable data.";
        buildType = "Simple";
      };
      components = {
        interchangeable = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }