{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "heyefi";
          version = "1.0.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "ryan@ryantm.com";
        author = "Ryan Mulligan";
        homepage = "https://github.com/ryantm/heyefi";
        url = "";
        synopsis = "A server for Eye-Fi SD cards.";
        description = "This server listens for Eye-Fi cards that want to upload files to a computer and stores them in an upload directory. It is meant to be run as a system daemon.";
        buildType = "Simple";
      };
      components = {
        exes = {
          heyefi = {
            depends  = [
              hsPkgs.base
              hsPkgs.stm
              hsPkgs.unix
              hsPkgs.MissingH
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.time
              hsPkgs.iso8601-time
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.http-types
              hsPkgs.HandsomeSoup
              hsPkgs.hxt
              hsPkgs.case-insensitive
              hsPkgs.multipart
              hsPkgs.tar
              hsPkgs.configurator
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.exceptions
              hsPkgs.random
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          test-heyefi = {
            depends  = [
              hsPkgs.base
              hsPkgs.stm
              hsPkgs.unix
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.MissingH
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.time
              hsPkgs.iso8601-time
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.http-types
              hsPkgs.HandsomeSoup
              hsPkgs.hxt
              hsPkgs.case-insensitive
              hsPkgs.multipart
              hsPkgs.tar
              hsPkgs.configurator
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.silently
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.exceptions
              hsPkgs.random
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }