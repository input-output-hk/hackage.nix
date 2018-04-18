{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ekg-cloudwatch";
          version = "0.0.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Seller Labs";
        maintainer = "matt@sellerlabs.com";
        author = "Matt Parsons";
        homepage = "https://github.com/sellerlabs/ekg-cloudwatch#readme";
        url = "";
        synopsis = "An ekg backend for Amazon Cloudwatch";
        description = "Push ekg metrics to Amazon Cloudwatch";
        buildType = "Simple";
      };
      components = {
        ekg-cloudwatch = {
          depends  = [
            hsPkgs.base
            hsPkgs.ekg-core
            hsPkgs.amazonka
            hsPkgs.amazonka-core
            hsPkgs.amazonka-cloudwatch
            hsPkgs.aeson
            hsPkgs.semigroups
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          ekg-cloudwatch-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ekg-core
              hsPkgs.amazonka
              hsPkgs.amazonka-core
              hsPkgs.amazonka-cloudwatch
              hsPkgs.aeson
              hsPkgs.semigroups
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.base
              hsPkgs.ekg-cloudwatch
              hsPkgs.hspec
            ];
          };
        };
      };
    }