{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-applicative";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "greg@gregweber.info";
        author = "Greg Weber";
        homepage = "https://github.com/gregwebs/aeson-applicative-dsl";
        url = "";
        synopsis = "make To/From JSOn instances from an applicative description";
        description = "";
        buildType = "Simple";
      };
      components = {
        aeson-applicative = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.text
          ];
        };
      };
    }