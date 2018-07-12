{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "persistent-zookeeper";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Junji Hashimoto <junji.hashimoto@gree.net>";
        author = "Junji Hashimoto <junji.hashimoto@gree.net>";
        homepage = "";
        url = "";
        synopsis = "Backend for persistent library using Zookeeper.";
        description = "Based on the Zookeeper package.";
        buildType = "Simple";
      };
      components = {
        "persistent-zookeeper" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.time
            hsPkgs.attoparsec
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.utf8-string
            hsPkgs.binary
            hsPkgs.scientific
            hsPkgs.hzk
            hsPkgs.resource-pool
            hsPkgs.path-pieces
            hsPkgs.template-haskell
            hsPkgs.base64-bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.resourcet
            hsPkgs.binary
          ];
        };
        tests = {
          "basic" = {
            depends  = [
              hsPkgs.base
              hsPkgs.persistent
              hsPkgs.persistent-template
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.time
              hsPkgs.attoparsec
              hsPkgs.template-haskell
              hsPkgs.monad-control
              hsPkgs.utf8-string
              hsPkgs.persistent-zookeeper
              hsPkgs.scientific
              hsPkgs.hzk
              hsPkgs.resource-pool
              hsPkgs.path-pieces
              hsPkgs.base64-bytestring
              hsPkgs.hspec
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.resourcet
            ];
          };
        };
      };
    }