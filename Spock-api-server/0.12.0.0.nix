{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Spock-api-server";
          version = "0.12.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 - 2017 Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "https://www.spock.li";
        url = "";
        synopsis = "Another Haskell web framework for rapid development";
        description = "Server wiring for Spock-api APIs";
        buildType = "Simple";
      };
      components = {
        Spock-api-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.Spock-core
            hsPkgs.Spock-api
            hsPkgs.hvect
            hsPkgs.mtl
          ];
        };
      };
    }