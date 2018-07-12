{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ec2-signature";
          version = "2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yusuke Nomura<yunomu@gmail.com>";
        author = "Yusuke Nomura<yunomu@gmail.com>";
        homepage = "https://github.com/worksap-ate/ec2-signature";
        url = "";
        synopsis = "The Amazon EC2 style signature calculator.";
        description = "The Amazon EC2 style signature calculator.\n<http://docs.aws.amazon.com/general/latest/gr/signature-version-2.html>";
        buildType = "Simple";
      };
      components = {
        "ec2-signature" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.containers
            hsPkgs.SHA
            hsPkgs.http-types
          ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.base64-bytestring
              hsPkgs.containers
              hsPkgs.SHA
              hsPkgs.http-types
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.bytestring
            ];
          };
        };
      };
    }