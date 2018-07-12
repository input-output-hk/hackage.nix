{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-lucu-implant-file = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Lucu";
          version = "0.4.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho at cielonegro dot org>";
        author = "PHO <pho at cielonegro dot org>";
        homepage = "http://cielonegro.org/Lucu.html";
        url = "";
        synopsis = "HTTP Daemonic Library";
        description = "Lucu is an HTTP daemonic library. It can be embedded in any\nHaskell program and runs in an independent thread.\nLucu is not a replacement for Apache. It is intended to be\nused to create an efficient web-based application without\nmessing around FastCGI. It is also intended to be run behind a\nreverse-proxy so it doesn't have some facilities like logging,\nclient filtering or such like.";
        buildType = "Simple";
      };
      components = {
        "Lucu" = {
          depends  = [
            hsPkgs.HsOpenSSL
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.dataenc
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.haskell-src
            hsPkgs.hxt
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.zlib
          ];
        };
        exes = {
          "lucu-implant-file" = {};
        };
      };
    }