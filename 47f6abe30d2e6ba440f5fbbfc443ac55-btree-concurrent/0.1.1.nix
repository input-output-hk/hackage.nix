{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "btree-concurrent";
          version = "0.1.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "brinchj@gmail.com";
        author = "Morten Brøns, Johan Brinch";
        homepage = "https://github.com/brinchj/btree-concurrent";
        url = "";
        synopsis = "A backend agnostic, concurrent BTree";
        description = "A backend agnostic, concurrent BTree";
        buildType = "Custom";
      };
      components = {
        btree-concurrent = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.old-time
            hsPkgs.random
            hsPkgs.time
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.snappy
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.cereal
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.cprng-aes
            hsPkgs.entropy
          ];
        };
        tests = {
          quickcheck-highlevel = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.stm
              hsPkgs.old-time
              hsPkgs.random
              hsPkgs.time
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.snappy
              hsPkgs.bytestring
              hsPkgs.base16-bytestring
              hsPkgs.base64-bytestring
              hsPkgs.cereal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.cprng-aes
              hsPkgs.entropy
            ];
          };
        };
      };
    }