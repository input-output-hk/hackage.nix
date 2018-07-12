{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws-ec2-knownhosts";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Bitnomial, Inc. (c) 2015";
        maintainer = "luke@bitnomial.com, opensource@bitnomial.com";
        author = "Luke Hoersten";
        homepage = "http://github.com/bitnomial/aws-ec2-knownhosts";
        url = "";
        synopsis = "Capture and manage AWS EC2 known_host pubkeys";
        description = "Capture and manage AWS EC2 known_host pubkeys via the AWS API command line tool.";
        buildType = "Simple";
      };
      components = {
        "aws-ec2-knownhosts" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.io-streams
            hsPkgs.process
            hsPkgs.text
            hsPkgs.text-format
          ];
        };
        exes = {
          "aws-ec2-pubkeys" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aws-ec2-knownhosts
              hsPkgs.io-streams
              hsPkgs.system-filepath
              hsPkgs.turtle
            ];
          };
          "aws-ec2-knownhosts" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aws-ec2-knownhosts
              hsPkgs.io-streams
              hsPkgs.system-filepath
              hsPkgs.turtle
            ];
          };
          "aws-ec2-keysync" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aws-ec2-knownhosts
              hsPkgs.io-streams
              hsPkgs.system-filepath
              hsPkgs.turtle
            ];
          };
        };
      };
    }