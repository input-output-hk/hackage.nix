{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wolf";
          version = "0.3.0";
        };
        license = "MIT";
        copyright = "Copyright (C) 2015 Swift Navigation, Inc.";
        maintainer = "Mark Fine <dev@swiftnav.com>";
        author = "Swift Navigation Inc.";
        homepage = "https://github.com/swift-nav/wolf";
        url = "";
        synopsis = "Amazon Simple Workflow Service Wrapper.";
        description = "Wolf is a wrapper around Amazon Simple Workflow Service.";
        buildType = "Simple";
      };
      components = {
        "wolf" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.amazonka
            hsPkgs.amazonka-core
            hsPkgs.amazonka-s3
            hsPkgs.amazonka-swf
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.conduit-extra
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.fast-logger
            hsPkgs.filemanip
            hsPkgs.formatting
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.mtl-compat
            hsPkgs.optparse-applicative
            hsPkgs.process
            hsPkgs.regex-applicative
            hsPkgs.regex-compat
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.text-manipulate
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.uuid
            hsPkgs.yaml
          ];
        };
        exes = {
          "wolf-register" = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.wolf
              hsPkgs.yaml
            ];
          };
          "wolf-execute" = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.wolf
              hsPkgs.yaml
            ];
          };
          "wolf-decide" = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.wolf
              hsPkgs.yaml
            ];
          };
          "wolf-act" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.amazonka-core
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.shelly
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.wolf
              hsPkgs.yaml
              hsPkgs.zlib
            ];
          };
          "wolf-act2" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.amazonka-core
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.resourcet
              hsPkgs.shelly
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.wolf
              hsPkgs.yaml
              hsPkgs.zlib
            ];
          };
          "wolf-actor" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wolf
              hsPkgs.optparse-generic
            ];
          };
          "wolf-decider" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wolf
              hsPkgs.optparse-generic
            ];
          };
          "shake-wolf" = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.directory
              hsPkgs.shake
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.wolf
            ];
          };
        };
      };
    }