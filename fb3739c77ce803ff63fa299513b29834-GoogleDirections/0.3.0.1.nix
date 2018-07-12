{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GoogleDirections";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Favil Orbedios";
        maintainer = "Favil Orbedios <favilo@gmail.com>";
        author = "Favil Orbedios <favilo@gmail.com>";
        homepage = "https://github.com/favilo/GoogleDirections.git";
        url = "";
        synopsis = "Haskell Interface to Google Directions API";
        description = "An interface to the Google Directions API";
        buildType = "Simple";
      };
      components = {
        "GoogleDirections" = {
          depends  = [
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.dataenc
            hsPkgs.base
            hsPkgs.AttoJson
            hsPkgs.download-curl
          ];
        };
      };
    }