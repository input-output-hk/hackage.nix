{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      enable-examples = false;
      enable-doctests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "libstackexchange";
          version = "0.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov, Dmitry Malikov";
        homepage = "https://github.com/supki/libstackexchange";
        url = "";
        synopsis = "StackExchange API interface";
        description = "Provides interface for StackExchange v2.1 API";
        buildType = "Simple";
      };
      components = {
        libstackexchange = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.http-conduit
            hsPkgs.profunctors
            hsPkgs.text
          ];
        };
        exes = {
          rep-watcher = {
            depends  = [
              hsPkgs.aeson-lens
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.libstackexchange
            ];
          };
          badges-watcher = {
            depends  = [
              hsPkgs.aeson-lens
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.libstackexchange
            ];
          };
          server-side-authentication = {
            depends  = [
              hsPkgs.base
              hsPkgs.happstack-server
              hsPkgs.lens
              hsPkgs.libstackexchange
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          api = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.http-conduit
              hsPkgs.libstackexchange
            ];
          };
        };
      };
    }