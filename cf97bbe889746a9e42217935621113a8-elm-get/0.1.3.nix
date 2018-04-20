{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9";
        identifier = {
          name = "elm-get";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2013-2014 Evan Czaplicki";
        maintainer = "info@elm-lang.org";
        author = "Evan Czaplicki";
        homepage = "http://github.com/elm-lang/elm-get";
        url = "";
        synopsis = "Tool for sharing and using Elm libraries";
        description = "elm-get lets you install, update, and publish Elm libraries";
        buildType = "Simple";
      };
      components = {
        elm-get = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.Elm
            hsPkgs.filepath
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.process
            hsPkgs.vector
          ];
        };
        exes = {
          elm-get = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.ansi-wl-pprint
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.Elm
              hsPkgs.filepath
              hsPkgs.HTTP
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.process
              hsPkgs.vector
            ];
          };
        };
      };
    }