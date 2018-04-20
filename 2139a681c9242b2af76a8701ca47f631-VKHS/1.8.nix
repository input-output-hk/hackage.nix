{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "VKHS";
          version = "1.8";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012, Sergey Mironov";
        maintainer = "grrwlf@gmail.com";
        author = "Sergey Mironov";
        homepage = "http://github.com/grwlf/vkhs";
        url = "";
        synopsis = "Provides access to Vkontakte social network via public API";
        description = "Provides access to Vkontakte API methods. Library requires no interaction\nwith the user during Implicit-flow authentication.";
        buildType = "Simple";
      };
      components = {
        VKHS = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.network-uri
            hsPkgs.pipes
            hsPkgs.pipes-http
            hsPkgs.time
            hsPkgs.data-default-class
            hsPkgs.parsec
            hsPkgs.tagsoup
            hsPkgs.case-insensitive
            hsPkgs.http-types
            hsPkgs.split
            hsPkgs.utf8-string
            hsPkgs.clock
            hsPkgs.optparse-applicative
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.vector
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.pretty-show
          ];
        };
        exes = {
          vkq = {
            depends  = [
              hsPkgs.regexpr
              hsPkgs.text
            ];
          };
        };
      };
    }