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
          version = "0.1.0.0";
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
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.http-conduit
            hsPkgs.lens
          ];
        };
        tests = {
          aeson-lens = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.aeson
              hsPkgs.lens
              hsPkgs.HUnit
              hsPkgs.libstackexchange
            ];
          };
          request = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.QuickCheck
              hsPkgs.libstackexchange
            ];
          };
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