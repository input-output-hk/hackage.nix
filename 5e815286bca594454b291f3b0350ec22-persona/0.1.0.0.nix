{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "persona";
          version = "0.1.0.0";
        };
        license = "AGPL-3.0-only";
        copyright = "Copyright (C) 2013, 2014  Fraser Tweedale";
        maintainer = "frase@frase.id.au";
        author = "Fraser Tweedale";
        homepage = "https://github.com/frasertweedale/hs-persona";
        url = "";
        synopsis = "Persona (BrowserID) library";
        description = "Persona (BrowesrID) library";
        buildType = "Simple";
      };
      components = {
        persona = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.data-default-class
            hsPkgs.lens
            hsPkgs.network-uri
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.jose
          ];
        };
      };
    }