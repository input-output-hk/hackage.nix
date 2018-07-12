{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.0";
        identifier = {
          name = "yesod-elements";
          version = "1.1";
        };
        license = "MIT";
        copyright = "BSD3";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "";
        url = "";
        synopsis = "Non template haskell markup building function in the spirit of lucid";
        description = "Build yesod widgets without shakespearean templating";
        buildType = "Simple";
      };
      components = {
        "yesod-elements" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }