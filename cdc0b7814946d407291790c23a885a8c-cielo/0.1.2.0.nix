{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cielo";
          version = "0.1.2.0";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/beijaflor-io/haskell-cielo";
        url = "";
        synopsis = "Cielo API v3 Bindings for Haskell";
        description = "Cielo API v3 Bindings";
        buildType = "Simple";
      };
      components = {
        cielo = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.aeson
            hsPkgs.mtl
            hsPkgs.uuid
            hsPkgs.wreq
            hsPkgs.lens
            hsPkgs.convertible
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.http-client
            hsPkgs.data-default
          ];
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.template-haskell
              hsPkgs.aeson
              hsPkgs.mtl
              hsPkgs.uuid
              hsPkgs.wreq
              hsPkgs.lens
              hsPkgs.convertible
              hsPkgs.bytestring
              hsPkgs.http-types
              hsPkgs.http-client
              hsPkgs.data-default
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.cielo
              hsPkgs.pretty-show
            ];
          };
        };
      };
    }