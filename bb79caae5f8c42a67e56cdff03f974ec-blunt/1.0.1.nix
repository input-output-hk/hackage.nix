{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "blunt";
          version = "1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak <taylor@fausak.me>";
        author = "";
        homepage = "https://blunt.herokuapp.com";
        url = "";
        synopsis = "Convert between pointfree and pointful expressions.";
        description = "Blunt is a web front end to the pointfree and pointful libraries. While you\ncan install and run it locally, there's no real reason to prefer it over\nthe @pointfree@ and @pointful@ executables. Instead, use the hosted\nversion: <https://blunt.herokuapp.com>.";
        buildType = "Simple";
      };
      components = {
        blunt = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.clay
            hsPkgs.flow
            hsPkgs.http-types
            hsPkgs.jmacro
            hsPkgs.lucid
            hsPkgs.pointfree
            hsPkgs.pointful
            hsPkgs.text
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.wai-websockets
            hsPkgs.warp
            hsPkgs.websockets
            hsPkgs.wl-pprint-text
          ];
        };
        exes = {
          blunt = {
            depends  = [
              hsPkgs.base
              hsPkgs.blunt
            ];
          };
        };
      };
    }