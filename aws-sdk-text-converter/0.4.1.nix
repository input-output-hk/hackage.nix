{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws-sdk-text-converter";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yusuke Nomura <yunomu@gmail.com>";
        author = "Yusuke Nomura <yunomu@gmail.com>";
        homepage = "https://github.com/yunomu/aws-sdk-text-converter";
        url = "";
        synopsis = "The text converter for aws-sdk.";
        description = "The text converter for aws-sdk.";
        buildType = "Simple";
      };
      components = {
        aws-sdk-text-converter = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.strptime
            hsPkgs.safe
            hsPkgs.iproute
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.time
              hsPkgs.time-locale-compat
              hsPkgs.strptime
              hsPkgs.safe
              hsPkgs.iproute
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }