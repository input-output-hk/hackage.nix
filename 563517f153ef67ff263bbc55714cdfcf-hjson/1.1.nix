{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hjson";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "voker57@gmail.com";
        author = "Voker57";
        homepage = "http://bitcheese.net/wiki/code/hjpath";
        url = "";
        synopsis = "JSON parsing library";
        description = "JSON parsing library with simple and sane API";
        buildType = "Simple";
      };
      components = {
        hjson = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.safe
          ];
        };
      };
    }