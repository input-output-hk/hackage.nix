{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "json-rpc-generic";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016 Kei Hibino";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "http://github.com/khibino/haskell-json-rpc-generic";
        url = "";
        synopsis = "Generic encoder and decode for JSON-RPC";
        description = "This package contains generic encoder and decode for JSON-RPC";
        buildType = "Simple";
      };
      components = {
        json-rpc-generic = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.dlist
            hsPkgs.scientific
            hsPkgs.vector
            hsPkgs.aeson
          ];
        };
        tests = {
          test-main = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.json-rpc-generic
              hsPkgs.quickcheck-simple
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }