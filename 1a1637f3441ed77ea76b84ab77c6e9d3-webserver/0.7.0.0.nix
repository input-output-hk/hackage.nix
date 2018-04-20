{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "webserver";
          version = "0.7.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John W. Lato <jwlato@gmail.com>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "HTTP server library";
        description = "A simple but practical HTTP server library.";
        buildType = "Simple";
      };
      components = {
        webserver = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.network
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.old-locale
            hsPkgs.stm
            hsPkgs.filepath
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.process
            hsPkgs.c10k
          ];
        };
      };
    }