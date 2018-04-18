{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sws";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 Derek Elkins";
        maintainer = "derek.a.elkins@gmail.com";
        author = "Derek Elkins";
        homepage = "";
        url = "";
        synopsis = "A simple web server for serving directories, similar to weborf.";
        description = "The main drivers for this application were Windows (and Linux) support and\nsecurity, and to a lesser extent performance.  Security is improved over\nweborf by using Haskell, supporting TLS, and explicitly NOT supporting CGIs\nof any kind.";
        buildType = "Simple";
      };
      components = {
        exes = {
          sws = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.bytestring
              hsPkgs.http-types
              hsPkgs.warp
              hsPkgs.warp-tls
              hsPkgs.wai
              hsPkgs.wai-middleware-static
              hsPkgs.wai-extra
            ];
          };
        };
      };
    }