{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Spock-api-ghcjs";
          version = "0.11.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 - 2016 Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "https://www.spock.li";
        url = "";
        synopsis = "Another Haskell web framework for rapid development";
        description = "GHCJS client side wiring for Spock-api APIs";
        buildType = "Simple";
      };
      components = {
        "Spock-api-ghcjs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghcjs-base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.Spock-api
            hsPkgs.hvect
          ];
        };
      };
    }