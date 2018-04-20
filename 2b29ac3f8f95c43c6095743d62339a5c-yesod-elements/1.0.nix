{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-elements";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "";
        url = "";
        synopsis = "Non template haskell markup building function in the spirit of lucid";
        description = "Build yesod widgets without shakespearean templating";
        buildType = "Simple";
      };
      components = {
        yesod-elements = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.blaze-html
          ];
        };
      };
    }