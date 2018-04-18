{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "protolude-lifted";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Piotr Bogdan";
        maintainer = "ppbogdan@gmail.com";
        author = "Piotr Bogdan";
        homepage = "https://github.com/pbogdan/protolude-lifted";
        url = "";
        synopsis = "Protolude with lifted-base and lifted-async.";
        description = "Protolude with lifted-base and lifted-async.";
        buildType = "Simple";
      };
      components = {
        protolude-lifted = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.lifted-base
            hsPkgs.lifted-async
            hsPkgs.async
          ];
        };
      };
    }