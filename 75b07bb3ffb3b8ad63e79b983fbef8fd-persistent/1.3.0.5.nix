{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      nooverlap = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "persistent";
          version = "1.3.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/persistent";
        url = "";
        synopsis = "Type-safe, multi-backend data serialization.";
        description = "Type-safe, data serialization. You must use a specific backend in order to make this useful.";
        buildType = "Simple";
      };
      components = {
        persistent = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.monad-control
            hsPkgs.lifted-base
            hsPkgs.path-pieces
            hsPkgs.aeson
            hsPkgs.monad-logger
            hsPkgs.transformers-base
            hsPkgs.base64-bytestring
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.attoparsec
            hsPkgs.template-haskell
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.silently
            hsPkgs.scientific
            hsPkgs.resource-pool
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.time
              hsPkgs.bytestring
              hsPkgs.vector
              hsPkgs.base64-bytestring
              hsPkgs.attoparsec
              hsPkgs.transformers
              hsPkgs.path-pieces
              hsPkgs.aeson
              hsPkgs.resourcet
              hsPkgs.monad-logger
              hsPkgs.conduit
              hsPkgs.monad-control
              hsPkgs.blaze-html
              hsPkgs.scientific
            ];
          };
        };
      };
    }