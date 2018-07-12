{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws-ec2";
          version = "0.3.5";
        };
        license = "BSD-3-Clause";
        copyright = "See contributors list in README and LICENSE file";
        maintainer = "MemCachier, Inc <code@memcachier.com>";
        author = "Vladimir Kirillov; MemCachier, Inc";
        homepage = "https://github.com/memcachier/aws-ec2";
        url = "";
        synopsis = "AWS EC2/VPC, ELB and CloudWatch client library for Haskell";
        description = "AWS client library with focus on infrastructure services like EC2 (with VPC), ELB and CloudWatch, extension to <https://github.com/aristidb/aws>.";
        buildType = "Simple";
      };
      components = {
        "aws-ec2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.time
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.scientific
            hsPkgs.exceptions
            hsPkgs.resourcet
            hsPkgs.byteable
            hsPkgs.cryptohash
            hsPkgs.http-types
            hsPkgs.http-conduit
            hsPkgs.conduit-extra
            hsPkgs.blaze-markup
            hsPkgs.xml-conduit
            hsPkgs.iproute
            hsPkgs.aws
          ];
        };
        exes = {
          "put-metric" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.optparse-applicative
              hsPkgs.aws
              hsPkgs.aws-ec2
            ];
          };
          "run-inst" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.optparse-applicative
              hsPkgs.aws
              hsPkgs.aws-ec2
              hsPkgs.yaml
              hsPkgs.vector
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.aeson
            ];
          };
        };
      };
    }