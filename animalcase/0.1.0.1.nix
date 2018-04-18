{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "animalcase";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "2014";
        maintainer = "tob@butter.sh";
        author = "Tobias Florek";
        homepage = "https://github.com/ibotty/animalcase";
        url = "";
        synopsis = "Convert camelCase to snake_case and vice versa";
        description = "Feedback very welcome.";
        buildType = "Simple";
      };
      components = {
        animalcase = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }