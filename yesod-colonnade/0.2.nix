{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-colonnade";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/colonnade#readme";
        url = "";
        synopsis = "Helper functions for using yesod with colonnade";
        description = "Yesod and colonnade";
        buildType = "Simple";
      };
      components = {
        yesod-colonnade = {
          depends  = [
            hsPkgs.base
            hsPkgs.colonnade
            hsPkgs.yesod-core
            hsPkgs.text
          ];
        };
      };
    }