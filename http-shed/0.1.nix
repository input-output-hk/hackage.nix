{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "http-shed";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andy Gill";
        author = "Andy Gill";
        homepage = "";
        url = "";
        synopsis = "A simple websever with an interact style API";
        description = "This web server promotes a Request to IO Response function\ninto a local web server. The user can decide how to interpret\nthe requests, and the library is intended for implementing Ajax APIs.";
        buildType = "Simple";
      };
      components = {
        http-shed = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
          ];
        };
        exes = { test = {}; };
      };
    }