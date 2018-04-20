{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "linode";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "arnaudpourseb@gmail.com";
        author = "Sebastian de Bellefon";
        homepage = "http://github.com/Helkafen/haskell-linode#readme";
        url = "";
        synopsis = "Bindings to the Linode API";
        description = "Haskell bindings to the Linode API. Rent servers hourly or monthly.\n\nThis package contains some helpers to create and configure Linode instances. The API key can be created on the Linode website.\n";
        buildType = "Simple";
      };
      components = {
        linode = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.errors
            hsPkgs.lens
            hsPkgs.process
            hsPkgs.retry
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wreq
          ];
        };
        tests = {
          linode-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.linode
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
            ];
          };
        };
      };
    }