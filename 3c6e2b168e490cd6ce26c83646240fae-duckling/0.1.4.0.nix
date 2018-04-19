{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "duckling";
          version = "0.1.4.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2014-present, Facebook, Inc.";
        maintainer = "duckling-team@fb.com";
        author = "Facebook, Inc.";
        homepage = "https://github.com/facebookincubator/duckling#readme";
        url = "";
        synopsis = "A Haskell library for parsing text into structured data.";
        description = "Duckling is a library for parsing text into structured data.";
        buildType = "Simple";
      };
      components = {
        duckling = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.dependent-sum
            hsPkgs.extra
            hsPkgs.hashable
            hsPkgs.regex-base
            hsPkgs.regex-pcre
            hsPkgs.text
            hsPkgs.text-show
            hsPkgs.time
            hsPkgs.timezone-series
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          duckling-regen-exe = {
            depends  = [
              hsPkgs.duckling
              hsPkgs.base
              hsPkgs.haskell-src-exts
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
          duckling-example-exe = {
            depends  = [
              hsPkgs.duckling
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.extra
              hsPkgs.filepath
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.text
              hsPkgs.text-show
              hsPkgs.time
              hsPkgs.timezone-olson
              hsPkgs.timezone-series
              hsPkgs.unordered-containers
            ];
          };
          duckling-request-sample = {
            depends  = [
              hsPkgs.duckling
              hsPkgs.base
              hsPkgs.dependent-sum
              hsPkgs.directory
              hsPkgs.extra
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.time
              hsPkgs.timezone-olson
              hsPkgs.timezone-series
              hsPkgs.unordered-containers
            ];
          };
          duckling-expensive = {
            depends  = [
              hsPkgs.duckling
              hsPkgs.base
              hsPkgs.dependent-sum
              hsPkgs.directory
              hsPkgs.extra
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.time
              hsPkgs.timezone-olson
              hsPkgs.timezone-series
              hsPkgs.unordered-containers
            ];
          };
        };
        tests = {
          duckling-test = {
            depends  = [
              hsPkgs.duckling
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }