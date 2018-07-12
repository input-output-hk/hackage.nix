{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-default";
          version = "1.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Patrick Brisbin <pbrisbin@gmail.com>";
        author = "Patrick Brisbin";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Default config and main functions for your yesod application (deprecated)";
        description = "Since version 1.2 of Yesod, this functionality is provided by the yesod package. This package is no longer needed.\nexecution of your yesod application";
        buildType = "Simple";
      };
      components = {
        "yesod-default" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
          ];
        };
      };
    }