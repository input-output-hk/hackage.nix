{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsaddle-clib";
          version = "0.9.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
        author = "Hamish Mackenzie";
        homepage = "";
        url = "";
        synopsis = "Interface for JavaScript that works with GHCJS and GHC";
        description = "This package provides an EDSL for calling JavaScript that\ncan be used both from GHCJS and GHC.";
        buildType = "Simple";
      };
      components = {
        "jsaddle-clib" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.jsaddle
            hsPkgs.data-default
            hsPkgs.text
          ];
        };
      };
    }