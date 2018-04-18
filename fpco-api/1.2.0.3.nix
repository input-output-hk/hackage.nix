{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      jenkins-build = false;
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fpco-api";
          version = "1.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2013 FP Complete";
        maintainer = "dev@fpcomplete.com";
        author = "FP Complete";
        homepage = "https://www.fpcomplete.com/page/api";
        url = "";
        synopsis = "Simple interface to the FP Complete IDE API.";
        description = "A server and library for communicating with the FP Complete IDE API.";
        buildType = "Simple";
      };
      components = {
        fpco-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base64-bytestring
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.deepseq-generics
            hsPkgs.directory
            hsPkgs.failure
            hsPkgs.fay
            hsPkgs.filepath
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.monad-extras
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.pretty-show
            hsPkgs.random
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.semigroups
            hsPkgs.shakespeare
            hsPkgs.shakespeare-i18n
            hsPkgs.stm
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.texts
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.yesod-core
          ];
        };
        exes = {
          fpco-api = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.fpco-api
              hsPkgs.ini
              hsPkgs.network
              hsPkgs.optparse-applicative
              hsPkgs.process
              hsPkgs.safe
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }