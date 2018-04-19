{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ide-backend-common";
          version = "0.9.1.2";
        };
        license = "MIT";
        copyright = "(c) 2015 FP Complete";
        maintainer = "Duncan Coutts <duncan@well-typed.com>";
        author = "Duncan Coutts, Mikolaj Konarski, Edsko de Vries";
        homepage = "";
        url = "";
        synopsis = "Shared library used be ide-backend and ide-backend-server";
        description = "Should not be used by end users";
        buildType = "Simple";
      };
      components = {
        ide-backend-common = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.async
            hsPkgs.aeson
            hsPkgs.unix
            hsPkgs.temporary
            hsPkgs.bytestring-trie
            hsPkgs.text
            hsPkgs.fingertree
            hsPkgs.binary
            hsPkgs.data-accessor
            hsPkgs.crypto-api
            hsPkgs.pureMD5
            hsPkgs.tagged
            hsPkgs.transformers
            hsPkgs.attoparsec
            hsPkgs.template-haskell
            hsPkgs.pretty-show
          ];
        };
      };
    }