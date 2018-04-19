{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-s3";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Ben Gamari";
        maintainer = "ben@smart-cactus.org";
        author = "Ben Gamari";
        homepage = "http://github.com/bgamari/pipes-s3";
        url = "";
        synopsis = "A simple interface for streaming data to and from Amazon S3";
        description = "This package provides a simple interface for streaming data to and from\nAmazon's S3 cloud storage service with the @pipes@ package.";
        buildType = "Simple";
      };
      components = {
        pipes-s3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.pipes-bytestring
            hsPkgs.pipes-safe
            hsPkgs.pipes
            hsPkgs.http-types
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.resourcet
            hsPkgs.aws
          ];
        };
        tests = {
          pipes-s3-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.exceptions
              hsPkgs.pipes
              hsPkgs.pipes-safe
              hsPkgs.pipes-bytestring
              hsPkgs.pipes-s3
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }