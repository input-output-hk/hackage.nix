{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wolf";
          version = "0.2.7";
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
        wolf = {
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
            hsPkgs.conduit-extra
            hsPkgs.exceptions
            hsPkgs.fast-logger
            hsPkgs.formatting
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.mtl-compat
            hsPkgs.optparse-applicative
            hsPkgs.regex-applicative
            hsPkgs.regex-compat
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.uuid
            hsPkgs.yaml
          ];
        };
        exes = {
          wolf-register = {
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
          wolf-execute = {
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
          wolf-decide = {
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
          wolf-act = {
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
          wolf-act2 = {
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
        };
        tests = {
          test = {
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