{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "aws-sdk";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "AWS SDK for Haskell Developers";
        maintainer = "Yusuke Nomura <yunomu@gmail.com>";
        author = "Yusuke Nomura <yunomu@gmail.com>";
        homepage = "http://worksap-ate.github.com/aws-sdk";
        url = "";
        synopsis = "AWS SDK for Haskell";
        description = "An AWS(Amazon Web Services) liblary for Haskell.";
        buildType = "Simple";
      };
      components = {
        aws-sdk = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.SHA
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.conduit
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.http-conduit
            hsPkgs.data-default
            hsPkgs.xml-conduit
            hsPkgs.xml-types
            hsPkgs.text
            hsPkgs.monad-control
            hsPkgs.safe
            hsPkgs.simple-config
            hsPkgs.parsec3
            hsPkgs.mtl
            hsPkgs.lifted-base
            hsPkgs.transformers-base
            hsPkgs.strptime
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }