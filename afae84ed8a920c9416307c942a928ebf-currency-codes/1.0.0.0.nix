{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "currency-codes";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "(c) 2017 Chordify";
        maintainer = "Matthias Benkort <matthias@chordify.net>";
        author = "Chordify";
        homepage = "https://gitlab.com/chordify/currency-codes";
        url = "";
        synopsis = "ISO-4217 Currency Codes";
        description = "ISO-4217 Currency Codes";
        buildType = "Simple";
      };
      components = {
        currency-codes = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bson
            hsPkgs.lens
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.swagger2
            hsPkgs.text
          ];
        };
      };
    }